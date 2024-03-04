class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, null: false
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :longitude
      t.float :latitude
      t.timestamps
    end
  end
end
