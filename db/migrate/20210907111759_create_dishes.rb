class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :picture
      t.string :ingredients
      t.string :directions
      t.string :cook_time
      t.string :yield

      t.timestamps
    end
  end
end
