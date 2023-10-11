class ChnageImageColumnToString < ActiveRecord::Migration[7.0]
  def change
    # Replace :your_table_name and :your_column_name with your actual table and column names
    change_column :flat_rentals, :images, :string
  end
end
