class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.date :date
      t.boolean :is_published

      t.timestamps
    end
  end
end
