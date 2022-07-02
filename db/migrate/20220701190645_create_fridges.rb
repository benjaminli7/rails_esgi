class CreateFridges < ActiveRecord::Migration[6.1]
  def change
    create_table :fridges do |t|
      t.integer :ingredients, array: true, default: []

      t.timestamps
    end
  end
end
