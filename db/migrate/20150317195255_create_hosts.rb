class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.text :phone_number
      t.text :company
    end
  end
end
