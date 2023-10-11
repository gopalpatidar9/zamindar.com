class AddLocationToFlatRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :flat_rentals, :location, :string
  end
end
