class CreateWidePhotos < ActiveRecord::Migration
  def change
    create_table :wide_photos do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
