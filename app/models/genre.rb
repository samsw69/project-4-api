class Genre < ApplicationRecord
has_and_belongs_to_many :product, join_table: "products_genres"
end
