class AddSub1NameToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub1_name, :string
  end
end
