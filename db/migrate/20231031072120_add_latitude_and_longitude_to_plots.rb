class AddLatitudeAndLongitudeToPlots < ActiveRecord::Migration[7.0]
  def change
    add_column :plots, :latitude, :float
    add_column :plots, :longitude, :float
  end
end
