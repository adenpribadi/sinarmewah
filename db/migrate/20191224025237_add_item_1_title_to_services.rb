class AddItem1TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_1_title, :string
  end
end
