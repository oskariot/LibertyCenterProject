class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
