class CreateLibertyTranslations < ActiveRecord::Migration
  def change
    create_table :liberty_translations do |t|
      t.string :word
      t.string :lang

      t.timestamps null: false
    end
  end
end
