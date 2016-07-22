class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :node, index: true, foreign_key: true
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.integer :replies_count
      t.integer :last_reply_user_id
      t.datetime :replied_at
      t.string :source

      t.timestamps null: false
    end
  end
end
