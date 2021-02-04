class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
    	t.string :address
    	t.references :addressable, polymorphic: true
      t.timestamps
    end
  end
end
