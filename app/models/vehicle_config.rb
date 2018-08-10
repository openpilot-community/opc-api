class VehicleConfig < ApplicationRecord
  include VehicleConfigAdmin
  extend FriendlyId
  # default_scope { includes(:vehicle_make,:vehicle_model).order("vehicle_make.name, vehicle_model.name, year") }
  friendly_id :full_name, use: :slugged
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :parent, :class_name => "VehicleConfig", :optional => true
  has_many :forks, :foreign_key => :parent_id, :class_name => "VehicleConfig"
  has_many :vehicle_config_videos
  # has_many :videos, :through => :video_config_videos
  has_many :vehicle_config_hardware
  has_many :hardware_items, :through => :vehicle_config_hardware
  has_many :vehicle_model_options, :through => :vehicle_model
  has_many :vehicle_options, :through => :vehicle_model_options
  belongs_to :vehicle_trim, :optional => true
  belongs_to :vehicle_config_status
  belongs_to :vehicle_make_package, :optional => true
  has_many :vehicle_config_capabilities
  has_many :vehicle_capabilities, :through => :vehicle_config_capabilities
  belongs_to :type, :class_name => "VehicleConfigType", :foreign_key => :vehicle_config_type_id, :optional => true
  
  def name
    "[#{type.name}] #{year} #{vehicle_make.name} #{vehicle_model.name}"
  end

  def is_base
    self.parent_id.blank?
  end
end
