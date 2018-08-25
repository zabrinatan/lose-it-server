class CreateNutritions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritions do |t|
      t.text :label
      t.text :quantity
      t.text :unit
      t.int :recipe_id

      t.timestamps
    end
  end
end
