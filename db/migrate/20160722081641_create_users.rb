class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :passwd, :null => false
      t.string :name, :null => false
      t.string :location
      t.string :bio
      t.string :website
      t.boolean :verified, :null => false, :default => false
      t.integer :state
      t.string :qq
      t.datetime :last_logined_at
      t.string :tagline

      t.timestamps null: false
    end
  end
end
