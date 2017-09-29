class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :recommend_id, foreign_key: true
      t.text :image
      t.timestamps null: false
    end
  end
end
