class AddColumnToAddress < ActiveRecord::Migration[6.1]
  def change
  	add_column :addresses, :latitude, :float
  	add_column :addresses, :longitude, :float
  	add_column :addresses, :street, :string
  	add_column :addresses, :state, :string
  	add_column :addresses, :city, :string
  	add_column :addresses, :pin_code, :integer
  	add_column :addresses, :country, :string
  end
end
