class CreateNutritions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritions do |t|
      t.text :label
      t.float :quantity
      t.text :unit
      t.integer :recipe_id

      t.timestamps
    end
  end
end
