class AddImgColumnToVideogames < ActiveRecord::Migration[6.0]
  def change
    add_column :videogames, :image, :string
  end
end
