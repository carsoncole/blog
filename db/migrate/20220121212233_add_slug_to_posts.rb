class AddSlugToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :slug, :string, unique: true
    add_index :posts, :slug, unique: true
  end
end
