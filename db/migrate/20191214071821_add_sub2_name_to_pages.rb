class AddSub2NameToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub2_name, :string
  end
end
