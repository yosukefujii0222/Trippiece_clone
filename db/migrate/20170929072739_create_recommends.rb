class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :fav_count
      t.string  :title, null: false
      t.text    :detail, null: false
      t.timestamps null: false
    end
  end
end
