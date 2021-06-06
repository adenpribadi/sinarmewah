class AddItem4DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_4_description, :string
  end
end
