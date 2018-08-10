class VehicleConfig < ApplicationRecord
  before_create :set_slug
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  has_many :vehicle_model_options, :through => :vehicle_model
  has_many :vehicle_options, :through => :vehicle_model_options
  belongs_to :vehicle_trim, :optional => true
  belongs_to :vehicle_config_status
  belongs_to :vehicle_make_package, :optional => true
  has_many :vehicle_config_capabilities
  has_many :vehicle_capabilities, :through => :vehicle_config_capabilities
  private
  def set_slug
    loop do
      self.slug = SecureRandom.uuid
      break unless VehicleMake.where(slug: slug).exists?
    end
  end
end
