class RenameColumnGenreIdToGenreIds < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :genre_id, :genre_ids
  end
end
