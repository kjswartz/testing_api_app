class CreateJoinTableForEscalationAndPool < ActiveRecord::Migration
  def change
    create_table :escalation_pools, id: false do |t|
      t.belongs_to :escalation
      t.belongs_to :pool
    end
  end
end
