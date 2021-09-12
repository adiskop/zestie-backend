class RemoveYieldFromDishes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dishes, :yield, :string
  end
end
