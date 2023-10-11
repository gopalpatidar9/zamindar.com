class CreateFlatRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :flat_rentals do |t|
      t.string :property_type
      t.string :posting_type
      t.integer :bedrooms
      t.string :furnishing_status
      t.string :present_in
      t.integer :floor_no
      t.decimal :monthly_rent
      t.decimal :security_deposit
      t.text :room_facilities
      t.integer :washrooms
      t.string :preferred_gender
      t.string :tenant_preference
      t.string :parking_availability

      t.timestamps
    end
  end
end
