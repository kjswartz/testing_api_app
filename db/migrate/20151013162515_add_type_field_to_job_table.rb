class AddTypeFieldToJobTable < ActiveRecord::Migration
  def change
    add_column :jobs, :name, :string
  end
end
