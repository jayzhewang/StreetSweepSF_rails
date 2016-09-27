class RemoveTimestampsFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :created_at, :string
    remove_column :schedules, :updated_at, :string
  end
end
