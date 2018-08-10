class VehicleModel < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_paper_trail
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

end
