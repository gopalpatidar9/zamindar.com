class AddChatroomToMessage < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :chatroome_id, :integer
  end
end
