class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.datetime :date
      t.text :content

      t.timestamps
    end
  end
end
