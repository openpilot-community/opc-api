class VehicleModel < ApplicationRecord
  has_paper_trail
  before_create :set_slug
  belongs_to :vehicle_make
  has_many :vehicle_configs
  has_many :vehicle_trims
  has_many :vehicle_model_options
  has_many :vehicle_options, :through => :vehicle_model_options
  def has_configs
    !vehicle_configs.blank?
  end

  def self.with_configs
    left_outer_joins(:vehicle_configs).where.not(vehicle_configs: {id: nil})
  end

  private
  def set_slug
    loop do
      self.slug = SecureRandom.uuid
      break unless VehicleMake.where(slug: slug).exists?
    end
  end
end
