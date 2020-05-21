class AddAttributeToVideogames < ActiveRecord::Migration[6.0]
  def change
    add_column :videogames, :genre, :string
    add_column :videogames, :photo, :string

  end
end
