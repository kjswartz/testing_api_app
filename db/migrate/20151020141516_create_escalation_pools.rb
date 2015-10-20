class CreateEscalationPools < ActiveRecord::Migration
  def change
    create_table :escalation_pools do |t|
      t.references :escalation, index: true, foreign_key: true
      t.references :pool, index: true, foreign_key: true
      t.integer :p_id
      t.integer :response_time
      t.string :name

      t.timestamps null: false
    end
  end
end
