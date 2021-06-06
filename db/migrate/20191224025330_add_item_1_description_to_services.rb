class AddItem1DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_1_description, :string
  end
end
