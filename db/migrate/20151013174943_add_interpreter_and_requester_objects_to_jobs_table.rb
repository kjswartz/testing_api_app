class AddInterpreterAndRequesterObjectsToJobsTable < ActiveRecord::Migration
  def change
    add_column :jobs, :requester_object, :string
    add_column :jobs, :interpreter_object, :string
  end
end
