# frozen_string_literal: true
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if State.count.zero?
  puts 'Creating States...'
  states =
    [
      { ansi_code: 'AL', iso: 'US-AL', name: 'Alabama' },
      { ansi_code: 'AK', iso: 'US-AK', name: 'Alaska' },
      { ansi_code: 'AZ', iso: 'US-AZ', name: 'Arizona' },
      { ansi_code: 'AR', iso: 'US-AR', name: 'Arkansas' },
      { ansi_code: 'CA', iso: 'US-CA', name: 'California' },
      { ansi_code: 'CO', iso: 'US-CO', name: 'Colorado' },
      { ansi_code: 'CT', iso: 'US-CT', name: 'Connecticut' },
      { ansi_code: 'DE', iso: 'US-DE', name: 'Delaware' },
      { ansi_code: 'DC', iso: 'US-DC', name: 'District of Columbia' },
      { ansi_code: 'FL', iso: 'US-FL', name: 'Florida' },
      { ansi_code: 'GA', iso: 'US-GA', name: 'Georgia' },
      { ansi_code: 'HI', iso: 'US-HI', name: 'Hawaii' },
      { ansi_code: 'ID', iso: 'US-ID', name: 'Idaho' },
      { ansi_code: 'IL', iso: 'US-IL', name: 'Illinois' },
      { ansi_code: 'IN', iso: 'US-IN', name: 'Indiana' },
      { ansi_code: 'IA', iso: 'US-IA', name: 'Iowa' },
      { ansi_code: 'KS', iso: 'US-KS', name: 'Kansas' },
      { ansi_code: 'KY', iso: 'US-KY', name: 'Kentucky' },
      { ansi_code: 'LA', iso: 'US-LA', name: 'Louisiana' },
      { ansi_code: 'ME', iso: 'US-ME', name: 'Maine' },
      { ansi_code: 'MD', iso: 'US-MD', name: 'Maryland' },
      { ansi_code: 'MA', iso: 'US-MA', name: 'Massachusetts' },
      { ansi_code: 'MI', iso: 'US-MI', name: 'Michigan' },
      { ansi_code: 'MN', iso: 'US-MN', name: 'Minnesota' },
      { ansi_code: 'MS', iso: 'US-MS', name: 'Mississippi' },
      { ansi_code: 'MO', iso: 'US-MO', name: 'Missouri' },
      { ansi_code: 'MT', iso: 'US-MT', name: 'Montana' },
      { ansi_code: 'NE', iso: 'US-NE', name: 'Nebraska' },
      { ansi_code: 'NV', iso: 'US-NV', name: 'Nevada' },
      { ansi_code: 'NH', iso: 'US-NH', name: 'New Hampshire' },
      { ansi_code: 'NJ', iso: 'US-NJ', name: 'New Jersey' },
      { ansi_code: 'NM', iso: 'US-NM', name: 'New Mexico' },
      { ansi_code: 'NY', iso: 'US-NY', name: 'New York' },
      { ansi_code: 'NC', iso: 'US-NC', name: 'North Carolina' },
      { ansi_code: 'ND', iso: 'US-ND', name: 'North Dakota' },
      { ansi_code: 'OH', iso: 'US-OH', name: 'Ohio' },
      { ansi_code: 'OK', iso: 'US-OK', name: 'Oklahoma' },
      { ansi_code: 'OR', iso: 'US-OR', name: 'Oregon' },
      { ansi_code: 'PA', iso: 'US-PA', name: 'Pennsylvania' },
      { ansi_code: 'RI', iso: 'US-RI', name: 'Rhode Island' },
      { ansi_code: 'SC', iso: 'US-SC', name: 'South Carolina' },
      { ansi_code: 'SD', iso: 'US-SD', name: 'South Dakota' },
      { ansi_code: 'TN', iso: 'US-TN', name: 'Tennessee' },
      { ansi_code: 'TX', iso: 'US-TX', name: 'Texas' },
      { ansi_code: 'UT', iso: 'US-UT', name: 'Utah' },
      { ansi_code: 'VT', iso: 'US-VT', name: 'Vermont' },
      { ansi_code: 'VA', iso: 'US-VA', name: 'Virginia' },
      { ansi_code: 'WA', iso: 'US-WA', name: 'Washington' },
      { ansi_code: 'WV', iso: 'US-WV', name: 'West Virginia' },
      { ansi_code: 'WI', iso: 'US-WI', name: 'Wisconsin' },
      { ansi_code: 'WY', iso: 'US-WY', name: 'Wyoming' },
      { ansi_code: 'AB', iso: 'CA-AB', name: 'Alberta' },
      { ansi_code: 'BC', iso: 'CA-BC', name: 'British Columbia' },
      { ansi_code: 'MB', iso: 'CA-MB', name: 'Manitoba' },
      { ansi_code: 'NB', iso: 'CA-NB', name: 'New Brunswick' },
      { ansi_code: 'NL', iso: 'CA-NL', name: 'Newfoundland and Labrador' },
      { ansi_code: 'NS', iso: 'CA-NS', name: 'Nova Scotia' },
      { ansi_code: 'ON', iso: 'CA-ON', name: 'Ontario' },
      { ansi_code: 'PE', iso: 'CA-PE', name: 'Prince Edward Island' },
      { ansi_code: 'QC', iso: 'CA-QC', name: 'Quebec' },
      { ansi_code: 'SK', iso: 'CA-SK', name: 'Saskatchewan' },
      { ansi_code: 'NT', iso: 'CA-NT', name: 'Northwest Territories' },
      { ansi_code: 'NU', iso: 'CA-NU', name: 'Nunavut' },
      { ansi_code: 'YT', iso: 'CA-YT', name: 'Yukon Territory' }
    ]

  states.each do |state|
    State.create(state)
  end
end

if Ethnicity.count.zero?
  puts 'Creating Ethnicities...'
  ethnicities = [
    ['Black'],
    ['White'],
    ['Hispanic'],
    ['Native American'],
    ['Asian'],
    ['Arabic'],
    ['Pacific Islander']
  ]

  ethnicities.each do |ethnicity|
    Ethnicity.create(title: ethnicity[0])
  end
end