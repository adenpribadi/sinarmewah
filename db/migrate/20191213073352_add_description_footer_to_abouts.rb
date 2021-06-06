class AddDescriptionFooterToAbouts < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :description_footer, :string
  end
end
