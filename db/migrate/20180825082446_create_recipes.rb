class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :label
      t.text :image
      t.int :yield
      t.text :calories
      t.text :url
      t.float :totalTime

      t.timestamps
    end
  end
end
