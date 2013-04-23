class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.references :user

      t.timestamps
    end
    add_index :avatars, :user_id
  end
end
