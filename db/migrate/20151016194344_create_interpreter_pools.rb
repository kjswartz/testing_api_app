class CreateInterpreterPools < ActiveRecord::Migration
  def change
    create_table :interpreter_pools do |t|
      t.references :interpreter, index: true, foreign_key: true
      t.references :pool, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
