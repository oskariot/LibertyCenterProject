class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
