class CreatePlots < ActiveRecord::Migration[7.0]
  def change
    create_table :plots do |t|
      t.string :property_type
      t.string :city
      t.string :locality
      t.text :address
      t.decimal :road_width
      t.decimal :plot_area
      t.string :transaction_type
      t.string :property_availability
      t.decimal :expected_price
      t.decimal :price_per_sqyrd
      t.boolean :corner_plot
      t.string :images
      t.integer :user_id

      t.timestamps
    end
  end
end
