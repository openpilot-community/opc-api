# vehicle_config_types = VehicleConfigType.all
VehicleConfig.where(:parent_id => nil).each do |vehicle_config|
  if vehicle_config.forks.blank?
    vehicle_config.amoeba_dup.save!
  end
end