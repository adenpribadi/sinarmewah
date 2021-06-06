class AddIconPhoneToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :icon_phone, :string
  end
end
