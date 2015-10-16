class AddProfileLinkToInterpreters < ActiveRecord::Migration
  def change
    add_column :interpreters, :profile, :string
  end
end
