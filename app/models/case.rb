class Case < ApplicationRecord
  enum cause_of_death: {
    beating: 'beating',
    bombing: 'bombing',
    chemical_agents_or_weapons: 'chemical_agents_or_weapons',
    choking: 'choking',
    drowning: 'drowning',
    medical_neglect: 'medical neglect',
    response_to_medical_emergency: 'response to medical emergency',
    shooting: 'shooting',
    stabbing: 'stabbing',
    suicide: 'suicide',
    taser: 'taser',
    vehicular: 'vehicular'
  }

  belongs_to :state
  has_one_attached :avatar
end
