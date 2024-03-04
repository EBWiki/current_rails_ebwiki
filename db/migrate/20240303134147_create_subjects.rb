class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.integer :age
      t.integer :gender_id
      t.integer :ethnicity_id
      t.boolean :unarmed
      t.boolean :mentally_ill
      t.boolean :veteran
      t.integer :case_id
      t.boolean :homeless
      t.timestamps
    end
  end
end
