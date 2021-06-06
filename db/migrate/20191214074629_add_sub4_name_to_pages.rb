class AddSub4NameToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub4_name, :string
  end
end
