require 'smarter_csv'
option_columns = "forward_collision_warning", "adaptive_cruise_control", "lane_departure_warning", "lane_keeping_assist", "blind_spot_monitor", "rear_cross_traffic_alert", "backup_camera", "adaptive_headlights", "antilock_braking_system", "automatic_emergency_braking", "automatic_parallel_parking", "backup_warning", "bicycle_detection", "brake_assist", "curve_speed_warning", "drowsiness_alert", "electronic_stability_control", "high_speed_alert", "hill_descent_assist", "hill_start_assist", "left_turn_crash_avoidance", "pedestrian_detection", "push_button_start", "sideview_camera", "temperature_warning", "tire_pressure_monitoring_system", "traction_control", "obstacle_detection"
namespace :scripts do
  desc "Import records"
  task import_options: :environment do
    option_columns.each do |option_column|
      option_title = option_column.titleize
      vehicle_option = VehicleOption.find_by(:name => option_title)
      # puts option_title
      # puts vehicle_option.name
    end
    filename = './db/data/new-adas-trims.csv'
    data = SmarterCSV.process( filename )

    data.each do |record|
      vehicle_year = record[:year]
      vehicle_make = VehicleMake.find_by(:name => record[:make])
      if !vehicle_make.blank?
        vehicle_model = VehicleModel.find_by(:name => record[:model], :vehicle_make_id => vehicle_make.id)
        
        if !vehicle_model.blank? && !vehicle_make.blank?
          option_columns.each do |option_column|
            option_title = option_column.titleize
            availability = record[:"#{option_column}"]
            vehicle_option = VehicleOption.find_by(:name => option_title)

            if !vehicle_option.blank?
              if availability.blank?
                availability = "Unknown / Not Available"
              end
              vehicle_option_availability = VehicleOptionAvailability.find_by(:name => availability)
              puts "availability:#{availability}out"
              if !vehicle_option_availability.blank?
                # puts vehicle_model.name
                # puts vehicle_make.name
                # puts "#{vehicle_year} #{vehicle_make.name} #{vehicle_model.name} / #{option_title}: #{vehicle_option_availability.name}"
                begin
                vehicle_model_option = VehicleModelOption.find_or_initialize_by(:vehicle_year => record[:year], :vehicle_make_id => vehicle_make.id, :vehicle_model_id => vehicle_model.id, :vehicle_option_id => vehicle_option.id)
                vehicle_model_option.vehicle_option
                vehicle_model_option.vehicle_option_availability = vehicle_option_availability
                vehicle_model_option.save!
                rescue

                end
              end
            end
          end
        end
      end
      # puts model_record.to_yaml
      # puts record[:year]
    end
  end
end