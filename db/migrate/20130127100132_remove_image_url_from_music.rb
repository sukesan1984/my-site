class RemoveImageUrlFromMusic < ActiveRecord::Migration
  def up
    remove_column :musics, :image_url
      end

  def down
    add_column :musics, :image_url, :string
  end
end
