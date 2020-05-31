class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :address
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
