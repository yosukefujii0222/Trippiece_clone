class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :recommend_id, foreign_key: true
      t.text :image, null: false
      t.timestamps null: false
    end
  end
end
