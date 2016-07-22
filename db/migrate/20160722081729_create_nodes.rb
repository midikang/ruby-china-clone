class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.references :section, index: true, foreign_key: true
      t.integer :sort
      t.integer :topics_count
      t.string :summary

      t.timestamps null: false
    end
  end
end
