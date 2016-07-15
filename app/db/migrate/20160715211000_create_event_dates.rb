class CreateEventDates < ActiveRecord::Migration
  def change
    create_table :event_dates do |t|
      t.datetime :when
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
