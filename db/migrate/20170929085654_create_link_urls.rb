class CreateLinkUrls < ActiveRecord::Migration
  def change
    create_table :link_urls do |t|
      t.string  :url
      t.timestamps null: false
    end
  end
end
