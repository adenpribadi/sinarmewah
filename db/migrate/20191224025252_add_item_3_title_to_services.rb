class AddItem3TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_3_title, :string
  end
end
