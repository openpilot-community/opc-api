class HardwareItem < ApplicationRecord
  belongs_to :hardware_type
  has_many :vehicle_config_hardware
  has_many :video_hardware
  has_many :videos, :through => :video_hardware
  has_many :vehicle_configs, :through => :vehicle_config_hardware
end 