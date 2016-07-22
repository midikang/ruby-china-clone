class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :passwd
      t.string :name
      t.string :location
      t.string :bio
      t.string :website
      t.string :avatar_file_name
      t.integer :state
      t.string :qq
      t.datetime :last_logined_at
      t.string :tagline

      t.timestamps null: false
    end
  end
end
