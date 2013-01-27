class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.text :description
      t.integer :num_download
      t.string :image_url
      t.string :download_path

      t.timestamps
    end
  end
end
