class CreateRequesters < ActiveRecord::Migration
  def change
    create_table :requesters do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :department
      t.string :department_code
      t.text :meeting_place
      t.string :permission
      t.string :status
      t.boolean :centralized, default: true

      t.timestamps null: false
    end
  end
end
