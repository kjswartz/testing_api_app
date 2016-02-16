class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.references :calendar_job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
