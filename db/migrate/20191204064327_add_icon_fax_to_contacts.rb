class AddIconFaxToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :icon_fax, :string
  end
end
