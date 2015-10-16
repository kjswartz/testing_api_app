class AddLanguageToPools < ActiveRecord::Migration
  def change
    add_column :pools, :languages, :text
  end
end
