class RemoveDownloadPathFromMusic < ActiveRecord::Migration
  def up
    remove_column :musics, :download_path
      end

  def down
    add_column :musics, :download_path, :string
  end
end
