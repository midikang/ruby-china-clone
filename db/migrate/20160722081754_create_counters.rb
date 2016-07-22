class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :key
      t.string :value

      t.timestamps null: false
    end
  end
end
