class CreateEscalations < ActiveRecord::Migration
  def change
    create_table :escalations do |t|
      t.string :name
      t.integer :response_time
      t.boolean :default

      t.timestamps null: false
    end
  end
end
