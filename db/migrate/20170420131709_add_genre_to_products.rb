class AddGenreToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :genre_id, :integer
  end
end
