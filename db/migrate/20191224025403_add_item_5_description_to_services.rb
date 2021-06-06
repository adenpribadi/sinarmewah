class AddItem5DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_5_description, :string
  end
end
