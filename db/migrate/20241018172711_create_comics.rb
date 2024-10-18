class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :synopsis
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
