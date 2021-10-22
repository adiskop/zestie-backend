class CreateCuisines < ActiveRecord::Migration[6.1]
  def change
    create_table :cuisines do |t|
      t.text :country
      t.text :picture

      t.timestamps
    end
  end
end
