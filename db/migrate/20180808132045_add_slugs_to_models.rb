class AddSlugsToModels < ActiveRecord::Migration[5.2]
  def update_column(model)
    add_column :"#{model}", :slug, :string, null: true
    modelClass = model.singularize.classify
    recordCount = modelClass.constantize.count
    modelClass.constantize.all.each_with_index do |record, index|
      puts "Migrating #{modelClass}... #{index} of #{recordCount}"
    
      record.slug = SecureRandom.uuid
      record.save!
    end
    change_column :"#{model}", :slug, :string, null: false
    add_index :"#{model}", :slug, unique: true
  end

  def up
    update_column("vehicle_makes")
    update_column("vehicle_models")
    update_column("vehicle_configs")
  end

  def down
    remove_column :vehicle_makes, :slug
    remove_column :vehicle_models, :slug
    remove_column :vehicle_configs, :slug
  end
end
