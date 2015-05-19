class CreateStaticContents < ActiveRecord::Migration
  def change
    create_table :static_contents do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
