class AddLongitudeLatitudeColumns2 < ActiveRecord::Migration
  def change
    add_column :people, :latitude, :float
    add_column :people, :longtitude, :float
  end
end
