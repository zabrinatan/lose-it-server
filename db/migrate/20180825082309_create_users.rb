class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :first_name
      t.text :last_name
      t.integer :weight
      t.integer :height
      t.string :password_digest

      t.timestamps
    end
  end
end
