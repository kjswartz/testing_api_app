class CreateCalendarJobs < ActiveRecord::Migration
  def change
    create_table :calendar_jobs do |t|
      t.string :name
      t.text :attrib_list

      t.timestamps null: false
    end
  end
end
