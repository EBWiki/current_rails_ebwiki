# frozen_string_literal: true

require 'rails_helper'

describe DateRange do
  it 'should return a string representing the date object' do
    start_date = 5.days.ago.beginning_of_day
    end_date = 2.days.ago.end_of_day
    date = DateRange.new(start_date: start_date, end_date: end_date)
    puts "Start date #{start_date}"
    expect(date.to_s).to eq "from #{start_date.to_fs(:short)} to #{end_date.to_fs(:short)}"
  end

  it 'should mark date ranges with the same dates as equal' do
    date_one = DateRange.new(start_date: 5.days.ago, end_date: 2.days.ago)
    date_two = DateRange.new(start_date: 5.days.ago, end_date: 2.days.ago)
    expect(date_one == date_two).to be_truthy
  end
end
