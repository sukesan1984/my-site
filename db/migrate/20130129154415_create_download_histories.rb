class CreateDownloadHistories < ActiveRecord::Migration
  def change
    create_table :download_histories do |t|
      t.string :ip_address
      t.string :download_type
      t.integer :target_id
      t.integer :download_count

      t.timestamps
    end
    add_index :download_histories, [:ip_address, :target_id]
  end
end
