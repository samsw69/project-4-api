class AddGenreToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :genre_id, :integer
  end
end
