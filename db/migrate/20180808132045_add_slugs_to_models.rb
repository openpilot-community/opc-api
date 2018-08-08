class AddSlugsToModels < ActiveRecord::Migration[5.2]
  def update_column(model)
    add_column :"#{model}", :slug, :string, null: true
    modelClass = model.singularize.classify
    puts "Migrating: #{modelClass}"
    modelClass.constantize.all.each do |record|
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
    update_column("vehicle_trims")
  end

  def down
    remove_column :vehicle_makes, :slug
    remove_column :vehicle_models, :slug
    remove_column :vehicle_configs, :slug
    remove_column :vehicle_trims, :slug
  end
end
