class AddAuthorIdToCitations < ActiveRecord::Migration
  def change
    add_column :citations, :author_id, :integer
  end
end
