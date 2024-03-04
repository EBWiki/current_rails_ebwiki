class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :telephone
      t.string :avatar
      t.timestamps
    end
  end
end
