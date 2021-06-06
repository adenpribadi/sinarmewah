class AddItem3ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_3_image, :string
  end
end
