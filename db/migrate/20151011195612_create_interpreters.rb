class CreateInterpreters < ActiveRecord::Migration
  def change
    create_table :interpreters do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.text :language
      t.boolean :staff
      t.string :status, default: "Pending"
      t.text :credentials
      t.text :specilities
      t.text :licenses
      t.string :gender
      t.text :vaccines
      t.string :email
      t.string :address
      t.string :city
      t.string :stat
      t.string :zip

      t.timestamps null: false
    end
  end
end
