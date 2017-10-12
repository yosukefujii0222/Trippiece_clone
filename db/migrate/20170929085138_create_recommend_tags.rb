class CreateRecommendTags < ActiveRecord::Migration
  def change
    create_table :recommend_tags do |t|
      t.integer :recommnd_id, null: false, foreign_key: true
      t.integer :tag_id, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
