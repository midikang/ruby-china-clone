class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :topic, index: true, foreign_key: true
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.integer :state
      t.string :source

      t.timestamps null: false
    end
  end
end
