class AddCuisineIdToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :cuisine_id, :integer
  end
end
