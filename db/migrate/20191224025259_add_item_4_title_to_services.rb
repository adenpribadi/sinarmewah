class AddItem4TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_4_title, :string
  end
end
