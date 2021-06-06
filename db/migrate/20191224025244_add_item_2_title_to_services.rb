class AddItem2TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_2_title, :string
  end
end
