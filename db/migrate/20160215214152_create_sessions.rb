class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :start_time
      t.integer :duration
      t.text :state
      t.references :calendar_job, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
