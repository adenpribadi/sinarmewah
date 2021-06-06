class AddItem3DescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :item_3_description, :string
  end
end
