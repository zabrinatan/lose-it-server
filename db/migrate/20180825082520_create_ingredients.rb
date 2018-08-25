class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.text :ingredientLabe
      t.int :recipe_id

      t.timestamps
    end
  end
end
