class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |s|
      s.string :name
      s.integer :artist_id
      s.integer :genre_id
    end
  end
end
