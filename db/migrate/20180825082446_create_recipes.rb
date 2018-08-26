class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :label
      t.text :image
      t.text :yield
      t.text :calories
      t.text :url
      t.text :totalTime
      t.integer :user_id
      t.timestamps
    end
  end
end
