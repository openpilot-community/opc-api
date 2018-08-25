class UpdateMakeSlugs < ActiveRecord::Migration[5.2]
  def change
    VehicleMake.all.each do |make|
      make.slug = nil

      make.save!
    end
  end
end
