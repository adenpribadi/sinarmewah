class AddItem5ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_5_image, :string
  end
end
