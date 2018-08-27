class CreateMealplans < ActiveRecord::Migration[5.2]
  def change
    create_table :mealplans do |t|
      t.integer :user_id
      t.text :day
      t.text :recipe
      t.text :meal
      t.timestamps
    end
  end
end
