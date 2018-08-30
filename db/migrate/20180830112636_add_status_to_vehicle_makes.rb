require "yaml"
class AddStatusToVehicleMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_makes, :status, :integer, default: 0
    puts "Reading file..."
    make_models = YAML::load_file("db/data/make_models.yml")
    puts "Migrating Makes and Models..."
    VehicleMake.all.update_all(status: 0)
    VehicleModel.all.update_all(status: 0)
    
    make_models.each do |obj|
      make_name = obj[:make]
      
      if (make = VehicleMake.find_or_initialize_by(name: make_name))
        puts "Found make... #{make.id}"
        
        models = obj[:models]
        make.status = 1
        make.save!
        models.each do |model_name|
          model = VehicleModel.find_or_initialize_by(name: model_name, vehicle_make_id: make.id)
          if (model.present?)
            puts "Found model... #{model.id}"
            model.status = 1
            puts "Model is valid?: #{model.valid?}"
            model.save!
          end
        end
        puts "Make is valid?:#{make.valid?}"
        puts "Make saved?: #{make.save!}"
      end
    end
  end
end
