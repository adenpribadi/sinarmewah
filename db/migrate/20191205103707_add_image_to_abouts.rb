class AddImageToAbouts < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :image, :string
  end
end
