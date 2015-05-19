class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :photo_url
      t.text :about
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
