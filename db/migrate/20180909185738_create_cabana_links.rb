class CreateCabanaLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :cabana_links do |t|
      t.string :name
      t.text :description
      t.string :route_id
      t.string :route_segment
      t.timestamp :route_segment_at
      t.string :segment_url
      t.string :source_cabana_url
      
      t.timestamps
    end
  end
end
