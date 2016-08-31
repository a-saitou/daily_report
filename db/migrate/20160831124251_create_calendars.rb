class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :hiduke
      t.integer :year
      t.integer :month
      t.integer :day
      t.boolean :holiday

      t.timestamps null: false
    end
  end
end
