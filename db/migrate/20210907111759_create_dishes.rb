class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.text :name
      t.text :picture
      t.text :ingredients
      t.text :directions
      t.text :cook_time
      t.text :yield

      t.timestamps
    end
  end
end
