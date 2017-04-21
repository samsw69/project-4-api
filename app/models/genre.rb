class Genre < ApplicationRecord
has_and_belongs_to_many :products, join_table: "genres_products"

end
