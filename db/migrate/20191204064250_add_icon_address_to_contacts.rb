class AddIconAddressToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :icon_address, :string
  end
end
