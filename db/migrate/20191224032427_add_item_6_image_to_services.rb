class AddItem6ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_6_image, :string
  end
end
