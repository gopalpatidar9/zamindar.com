class CreateChatroomes < ActiveRecord::Migration[7.0]
  def change
    create_table :chatroomes do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :flat_rental_id
      

      t.timestamps
    end
  end
end
