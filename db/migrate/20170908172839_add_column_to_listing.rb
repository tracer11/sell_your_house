class AddColumnToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :state, :string
    add_column :listings, :zip_code, :string
    add_column :listings, :city, :string
    add_column :listings, :first_name, :string
    add_column :listings, :last_name, :string
    add_column :listings, :email, :string
    add_column :listings, :phone_number, :string
  end
end
