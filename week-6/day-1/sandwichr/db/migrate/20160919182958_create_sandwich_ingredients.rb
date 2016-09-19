class CreateSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.has_many :sandwich
      t.has_many :ingredient

      t.timestamps
    end
  end
end
