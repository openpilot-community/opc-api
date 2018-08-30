# == Schema Information
#
# Table name: vehicle_makes
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slack_channel :string
#  slug          :string
#

class VehicleMake < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_paper_trail
  
  has_many :vehicle_models, inverse_of: :vehicle_make
  has_many :vehicle_configs
  has_many :vehicle_trims
  scope :with_configs, -> { VehicleMake.joins(:vehicle_configs).where("vehicle_configs.id IS NOT NULL") }
  # accepts_nested_attributes_for :vehicle_models
  # validates_associated
  def vehicle_models_with_configs
    with_configs.vehicle_models.with_configs
  end
  # def to_param
  #   slug
  # end
  def has_configs
    !vehicle_configs.blank?
  end
end
