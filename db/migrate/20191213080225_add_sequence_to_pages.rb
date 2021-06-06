class AddSequenceToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :sequence, :number
  end
end
