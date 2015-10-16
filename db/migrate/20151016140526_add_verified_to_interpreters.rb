class AddVerifiedToInterpreters < ActiveRecord::Migration
  def change
    add_column :interpreters, :verified, :boolean 
  end
end
