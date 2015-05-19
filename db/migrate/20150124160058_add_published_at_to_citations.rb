class AddPublishedAtToCitations < ActiveRecord::Migration
  def change
    add_column :citations, :published_at, :datetime
  end
end
