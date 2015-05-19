class CreateCategoriesCitations < ActiveRecord::Migration
  def change
    create_table :categories_citations, :id => false do |t|
      t.references :category
      t.references :citation
    end
  end
  def self.down
    drop_table :categories_citations
  end
end
