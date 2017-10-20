class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :user_id, null: false, foreign_key:true
      t.integer :recommend_id, null: false, foreign_key:true
      t.timestamps null: false
    end
  end
end
