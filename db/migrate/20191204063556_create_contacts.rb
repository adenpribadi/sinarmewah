class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :address
      t.string :email
      t.string :fax
      t.string :phone

      t.timestamps
    end
  end
end
