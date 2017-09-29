class CreateRecommendUrls < ActiveRecord::Migration
  def change
    create_table :recommend_urls do |t|
      t.integer :recommend_id, null: false, foreign_key: true
      t.integer :link_url_id, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
