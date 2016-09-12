class AddConcertIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :concert_id, :integer
  end
end
