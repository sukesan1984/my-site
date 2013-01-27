class AddComposerToMusic < ActiveRecord::Migration
  def change
    add_column :musics, :composer, :string

  end
end
