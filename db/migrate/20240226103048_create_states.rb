class CreateStates < ActiveRecord::Migration[7.1]
  def change
    create_table :states, force: :cascade do |t|
      t.string   'name'
      t.string   'iso'
      t.string   'ansi_code'
      t.timestamps
    end
  end
end
