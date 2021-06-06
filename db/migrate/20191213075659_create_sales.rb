class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
