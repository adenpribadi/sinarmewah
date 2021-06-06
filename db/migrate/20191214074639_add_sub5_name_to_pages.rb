class AddSub5NameToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub5_name, :string
  end
end
