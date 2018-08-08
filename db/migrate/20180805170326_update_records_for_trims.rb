class UpdateRecordsForTrims < ActiveRecord::Migration[5.2]
  def up
    csv_file = "./db/data/adas-trims.csv"
    data = SmarterCSV.process( csv_file)
    data.each do |row|
      year = row[:"\uFEFFyear"]
      make = row[:make].to_s.strip.chomp.squish
      model = row[:model].to_s.strip.chomp.squish
      vehicle_trims = VehicleTrim.where(:make_display => make, :name => model)
      if (vehicle_trims.size == 0)
        puts "#{year} #{make.to_s.strip} #{model.to_s.strip}"
      end
    end
  end
  def down
    # csv_file = "./db/data/adas-trims.csv"
    # data = SmarterCSV.process( csv_file)
    # data.each do |row|
    #   year = row[:"\uFEFFyear"]
    #   puts "#{year} #{make} #{row[:model]}"
    #   vehicle_trims = VehicleTrim.where(:year => year, :make_display => make, :name => row[:model])
    #   puts vehicle_trims.size
    # end
  end
end
