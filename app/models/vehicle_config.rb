# == Schema Information
#
# Table name: vehicle_configs
#
#  id                       :bigint(8)        not null, primary key
#  title                    :string
#  year                     :integer
#  vehicle_make_id          :bigint(8)
#  vehicle_model_id         :bigint(8)
#  vehicle_trim_id          :bigint(8)
#  vehicle_config_status_id :bigint(8)
#  description              :text
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  vehicle_make_package_id  :bigint(8)
#  slug                     :string
#  parent_id                :integer
#  vehicle_config_type_id   :bigint(8)
#

class VehicleConfig < ApplicationRecord
  include VehicleConfigAdmin
  extend FriendlyId
  scope :honda, -> { includes(:vehicle_make, :vehicle_model, :vehicle_config_type).where("vehicle_makes.name = 'Honda'").order("vehicle_models.name, year, vehicle_config_types.difficulty_level") }
  scope :toyota, -> { includes(:vehicle_make, :vehicle_model).where("vehicle_makes.name = 'Toyota'").order("vehicle_models.name, year") }
  # default_scope { includes(:vehicle_make,:vehicle_model).order("vehicle_make.name, vehicle_model.name, year") }
  friendly_id :name_for_slug, use: :slugged
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :parent, :class_name => "VehicleConfig", :optional => true
  
  has_many :forks, :class_name => "VehicleConfig", :foreign_key => :parent_id
  
  belongs_to :vehicle_trim, :optional => true
  belongs_to :vehicle_config_status
  belongs_to :vehicle_make_package, :optional => true

  belongs_to :vehicle_config_type, :optional => true
  before_save :set_title

  # MODIFICATIONS
  has_many :vehicle_config_modifications
  has_many :modifications, :through => :vehicle_config_modifications

  # has_many :vehicle_config_hardware_items
  # has_many :hardware_items, :through => :vehicle_config_hardware_items

  # CAPABILITIES
  has_many :vehicle_config_capabilities
  has_many :vehicle_capabilities, :through => :vehicle_config_capabilities

  # OPTIONS
  # has_many :vehicle_model_options, :through => :vehicle_model
  # has_many :vehicle_options, :through => :vehicle_model_options
  
  has_many :vehicle_config_videos

  def name
    new_name = "Untitled"
    if vehicle_config_type && vehicle_make && vehicle_model
      new_name = "[#{vehicle_config_type.name}] #{year} #{vehicle_make.name} #{vehicle_model.name}"
      if vehicle_make_package
        new_name = "#{new_name} w/ #{vehicle_make_package.name}"
      end
    end

    new_name
  end

  def fork_config
    self.dup.tap do |config|
      config.parent = self
      config.slug   = nil
      config.created_at = Time.now
      config.updated_at = Time.now
    end
  end

  def diff_from(veh_conf)
    HashDiff.diff(veh_conf.diff_object,self.diff_object)
  end

  def diff_from_parent
    if !parent.blank?
      diff_from(parent)
    end
  end

  def name_for_slug
    if vehicle_config_type && vehicle_make && vehicle_model
      "#{id} #{year} #{vehicle_make.name} #{vehicle_model.name} #{vehicle_config_type.name}"
    else
      "Untitled"
    end
  end

  def set_title
    self.title = "#{year} #{vehicle_make.name} #{vehicle_model.name}"
  end

  def diff_object
    {
      :year => year,
      :make => vehicle_make.name,
      :model => vehicle_model.name,
      :status => vehicle_config_status.name,
      :capabilities => vehicle_config_capabilities.map do |capability|
        {
          :name => capability.vehicle_capability.name,
          :slug => capability.vehicle_capability.slug,
          :kph => capability.kph,
          :mph => capability.mph,
          :timeout => capability.timeout
        }
      end,
      :modifications => modifications.map do |mod|
        mod.attributes
      end
    }
  end

  # def to_param
  #   slug
  # end

  def is_base
    self.parent_id.blank?
  end
end
