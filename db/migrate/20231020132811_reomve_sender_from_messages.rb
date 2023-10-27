class ReomveSenderFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :sender_id
    remove_column :messages, :receiver_id
    remove_column :messages, :flat_rental_id
  end
end
