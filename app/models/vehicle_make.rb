class VehicleMake < ApplicationRecord
  has_paper_trail
  before_create :set_slug
  
  has_many :vehicle_models
  has_many :vehicle_configs

  def self.with_configs
    left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end

  def vehicle_models_with_configs
    with_configs.vehicle_models.with_configs
    # left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end

  def has_configs
    !vehicle_configs.blank?
  end

  def to_param
    slug
  end
  
  private
  def set_slug
    loop do
      self.slug = SecureRandom.uuid
      break unless VehicleMake.where(slug: slug).exists?
    end
  end
end
