class AddSub2LinkToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sub2_link, :string
  end
end
