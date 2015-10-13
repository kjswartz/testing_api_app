class ChangeColumnStatToStateInterpreters < ActiveRecord::Migration
  def change
    rename_column :interpreters, :stat, :state
  end
end
