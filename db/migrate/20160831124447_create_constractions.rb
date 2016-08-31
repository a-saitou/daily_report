class CreateConstractions < ActiveRecord::Migration
  def change
    create_table :constractions do |t|
      t.string :name
      t.string :abbreviation
      t.string :kana
      t.integer :code
      t.integer :orderer_id
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
