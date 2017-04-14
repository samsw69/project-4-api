class CreateJoinTableProductsGenres < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :genres do |t|
      # t.index [:product_id, :genre_id]
      # t.index [:genre_id, :product_id]
    end
  end
end
