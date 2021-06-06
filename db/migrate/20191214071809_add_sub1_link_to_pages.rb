class AddSub1LinkToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub1_link, :string
  end
end
