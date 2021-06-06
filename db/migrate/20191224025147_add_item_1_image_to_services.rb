class AddItem1ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_1_image, :string
  end
end
