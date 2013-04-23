class AddActiveToAvatars < ActiveRecord::Migration
  def change
    add_column :avatars, :active, :boolean
  end
end
