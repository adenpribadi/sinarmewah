class AddItem5TitleToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_5_title, :string
  end
end
