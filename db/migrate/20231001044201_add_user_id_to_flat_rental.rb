class AddUserIdToFlatRental < ActiveRecord::Migration[7.0]
  def change
    add_column :flat_rentals, :user_id, :integer
  end
end
