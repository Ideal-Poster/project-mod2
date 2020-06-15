class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.integer :age
      t.string :birthday
      t.string :img_url

      t.timestamps
    end
  end
end
