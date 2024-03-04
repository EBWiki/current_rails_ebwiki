class CreateCases < ActiveRecord::Migration[7.1]
  def change
    create_table :cases do |t|
      t.string :title
      t.datetime :incident_date
      t.string :slug
      t.text :overview
      t.text :summary
      t.text :blurb
      t.timestamps
    end
  end
end
