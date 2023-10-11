class RemoveImagesFromFlatRentals < ActiveRecord::Migration[7.0]
  def change
    remove_column :flat_rentals, :images
  end
end
