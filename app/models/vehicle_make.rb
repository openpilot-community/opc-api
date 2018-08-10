class VehicleMake < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_paper_trail
  
  has_many :vehicle_models
  has_many :vehicle_configs
  has_many :vehicle_trims
  scope :with_configs, -> { VehicleMake.joins(:vehicle_configs).where("vehicle_configs.id IS NOT NULL") }

  def vehicle_models_with_configs
    with_configs.vehicle_models.with_configs
    # left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end

  def has_configs
    !vehicle_configs.blank?
  end
end
