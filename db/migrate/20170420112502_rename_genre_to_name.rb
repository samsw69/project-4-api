class RenameGenreToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :genres, :genre, :name
  end
end
