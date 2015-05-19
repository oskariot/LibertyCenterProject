class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.datetime :birth_date
      t.datetime :death_date
      t.text :about
      t.integer :author_id
      t.timestamps null: false
    end
  end
end
