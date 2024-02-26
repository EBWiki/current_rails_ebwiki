class CreateGenders < ActiveRecord::Migration[7.1]
  def change
    create_table :genders do |t|
      t.string :sex
      t.string :slug
      t.timestamps
    end
  end
end
