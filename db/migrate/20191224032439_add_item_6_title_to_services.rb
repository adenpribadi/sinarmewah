class AddItem6TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_6_title, :string
  end
end
