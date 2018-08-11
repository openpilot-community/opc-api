class VehicleMake < ApplicationRecord
  extend FriendlyId
  friendly_id :name_for_slug, use: :slugged
  has_paper_trail
  
  has_many :vehicle_models
  has_many :vehicle_configs
  has_many :vehicle_trims
  scope :with_configs, -> { VehicleMake.joins(:vehicle_configs).where("vehicle_configs.id IS NOT NULL") }

  def vehicle_models_with_configs
    with_configs.vehicle_models.with_configs
    # left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end
  
  def name_for_slug
    "#{id} #{name}"
  end
  # def to_param
  #   slug
  # end
  def has_configs
    !vehicle_configs.blank?
  end
end
