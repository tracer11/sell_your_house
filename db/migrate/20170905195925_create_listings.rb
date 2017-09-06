class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.bit :renovation
      t.decimal :renovation_cost
      t.bit :basement
      t.bit :basement_finished

      t.timestamps
    end
  end
end
