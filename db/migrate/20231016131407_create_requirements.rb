class CreateRequirements < ActiveRecord::Migration[7.0]
  def change
    create_table :requirements do |t|
      t.string :location
      t.integer :budget
      t.integer :bedrooms
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
