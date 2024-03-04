class AddCauseOfDeath < ActiveRecord::Migration[7.1]
  def up
    create_enum "cause_of_death", %w[beating bombing chemical_agents_or_weapons choking drowning medical_neglect response_to_medical_emergency shooting stabbing suicide taser vehicular]
  end

  def down
    drop_enum "cause_of_death"
  end
end
