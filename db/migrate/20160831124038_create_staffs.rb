class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :office
      t.integer :order
      t.deimal :wage
      t.date :birth_day
      t.date :hire_date
      t.date :leaving_date

      t.timestamps null: false
    end
  end
end
