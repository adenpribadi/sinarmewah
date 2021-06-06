class AddSub3NameToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub3_name, :string
  end
end
