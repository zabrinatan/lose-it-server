class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :label
      t.text :image
      t.integer :yield
      t.text :calories
      t.text :url
      t.float :totalTime

      t.timestamps
    end
  end
end
