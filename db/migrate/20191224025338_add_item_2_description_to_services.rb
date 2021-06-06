class AddItem2DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_2_description, :string
  end
end
