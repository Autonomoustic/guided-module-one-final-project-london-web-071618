class CreateArtists < ActiveRecord::Migration[5.0]

  def change
    create_table :artists do |a|
      a.string :name
    end
  end
end
