class AddImagesToFlatRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :flat_rentals, :images, :json
  end
end
