class CreateRecipesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes_users do |t|
      t.integer :recipe_id
      t.integer :user_id
    end
  end
end
