class FixColumnName < ActiveRecord::Migration
  def change
	rename_column :stickers, :url, :photo_url
	rename_column :wide_photos, :url, :photo_url
	rename_column :static_contents, :url, :photo_url
  end
end
