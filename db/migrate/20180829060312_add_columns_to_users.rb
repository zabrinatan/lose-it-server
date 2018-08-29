class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :calories, :float
    add_column :users, :carbs, :float
    add_column :users, :proteins, :float
    add_column :users, :fats, :float

  end
end
