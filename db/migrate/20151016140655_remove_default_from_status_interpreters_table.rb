class RemoveDefaultFromStatusInterpretersTable < ActiveRecord::Migration
  def change
    change_column_default :interpreters, :status, nil
  end
end
