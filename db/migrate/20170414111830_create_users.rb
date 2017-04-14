class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
