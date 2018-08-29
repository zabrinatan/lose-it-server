class CreateMealplans < ActiveRecord::Migration[5.2]
  def change
    create_table :mealplans do |t|
      t.integer :user_id
      t.text :day
      t.text :recipe
      t.text :meal
      t.float :calories
      t.float :carbs
      t.float :fats
      t.float :proteins
      t.timestamps
    end
  end
end
