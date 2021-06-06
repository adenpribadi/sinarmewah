class AddItem6DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_6_description, :string
  end
end
