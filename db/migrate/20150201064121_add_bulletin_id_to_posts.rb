class AddBulletinIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :bulletin_id, :integer
    add_index :posts, :bulletin_id
  end
end
