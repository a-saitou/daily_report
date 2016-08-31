class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.date :hiduke
      t.integer :staff_id
      t.integer :constraction_id
      t.datetime :start_time
      t.datetime :end_time
      t.float :work_time
      t.float :over_time
      t.float :night_time

      t.timestamps null: false
    end
  end
end
