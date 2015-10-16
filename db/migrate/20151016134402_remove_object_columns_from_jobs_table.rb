class RemoveObjectColumnsFromJobsTable < ActiveRecord::Migration
  def change
    remove_column :jobs, :requester_object, :string
    remove_column :jobs, :interpreter_object, :string
  end
end
