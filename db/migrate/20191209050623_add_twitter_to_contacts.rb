class AddTwitterToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :twitter, :string
  end
end
