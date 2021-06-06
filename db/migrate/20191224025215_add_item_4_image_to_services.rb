class AddItem4ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_4_image, :string
  end
end
