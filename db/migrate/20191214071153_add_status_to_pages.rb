class AddStatusToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :status, :string
  end
end
