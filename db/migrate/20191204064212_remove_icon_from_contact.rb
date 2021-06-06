class RemoveIconFromContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :icon, :string
  end
end
