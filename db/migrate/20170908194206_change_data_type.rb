class ChangeDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :listings, :basement, :string
    change_column :listings, :basement_finished, :string
    change_column :listings, :renovation, :string
  end
end
