class AddIconEmailToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :icon_email, :string
  end
end
