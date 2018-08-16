# == Schema Information
#
# Table name: vehicle_models
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  vehicle_make_id :bigint(8)
#  tmp_make_name   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  slug            :string
#

class VehicleModel < ApplicationRecord
  extend FriendlyId
  friendly_id :name_for_slug, use: :slugged
  has_paper_trail
  belongs_to :vehicle_make
  has_many :vehicle_trims
  has_many :vehicle_configs
  has_many :vehicle_model_options
  has_many :vehicle_options, :through => :vehicle_model_options
  
  def has_configs
    !vehicle_configs.blank?
  end

  # def to_param
  #   slug
  # end

  def name_for_slug
    "#{id} #{name}"
  end

  def self.with_configs
    left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end

end
