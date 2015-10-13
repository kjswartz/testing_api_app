class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :request_time
      t.datetime :request_date
      t.text :status
      t.integer :request_wait
      t.integer :provider_total
      t.text :provider_list
      t.string :language
      t.integer :duration
      t.string :patient
      t.decimal :latitude
      t.decimal :longitude
      t.references :requester, index: true, foreign_key: true
      t.references :interpreter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
