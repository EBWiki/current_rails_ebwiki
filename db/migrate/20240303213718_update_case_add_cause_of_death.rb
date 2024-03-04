class UpdateCaseAddCauseOfDeath < ActiveRecord::Migration[7.1]
  def change
    add_column :cases, :cause_of_death, :string
  end
end
