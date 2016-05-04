class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :month 
      t.integer :year
      t.integer :date
      t.timestamps null: false
    end
  end
end
