class AddCountryAndCityToFlatRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :flat_rentals, :country, :string
    add_column :flat_rentals, :city, :string
  end
end
