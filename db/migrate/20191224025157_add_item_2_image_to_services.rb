class AddItem2ImageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_2_image, :string
  end
end
