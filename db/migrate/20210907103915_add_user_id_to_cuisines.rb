class AddUserIdToCuisines < ActiveRecord::Migration[6.1]
  def change
    add_column :cuisines, :user_id, :integer
  end
end
