class AddBoxesToDisplays < ActiveRecord::Migration[5.0]
  def change
    add_column :displays, :box13, :string
    add_column :displays, :box14, :string
    add_column :displays, :box15, :string
  end
end
