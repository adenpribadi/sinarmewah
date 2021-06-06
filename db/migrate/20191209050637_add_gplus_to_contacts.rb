class AddGplusToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :gplus, :string
  end
end
