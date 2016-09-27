class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :CNN
      t.string :WEEKDAY
      t.string :BLOCKSIDE
      t.integer :BLOCKSWEEP
      t.string :CNNRIGHTLE
      t.string :CORRIDOR
      t.string :FROMHOUR
      t.string :TOHOUR
      t.string :HOLIDAYS
      t.string :WEEK1OFMON
      t.string :WEEK2OFMON
      t.string :WEEK3OFMON
      t.string :WEEK4OFMON
      t.string :WEEK5OFMON
      t.integer :LF_FADD
      t.integer :LF_TOADD
      t.integer :RF_TOADD
      t.integer :RF_FADD
      t.string :STREETNAME
      t.integer :ZIP_CODE
      t.string :NHOOD
      t.string :DISTRICT
    end

    add_index :schedules, :STREETNAME
  end
end
