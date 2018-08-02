class CreateAlbums < ActiveRecord::Migration[5.0]

  def change
    create_table :albums do |a|
      a.string :name
      a.integer :artist_id
      a.integer :genre_id
    end
  end
end
