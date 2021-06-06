class AddIconToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :icon, :string
  end
end
