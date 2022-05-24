class Salary < ApplicationRecord
  include DesignationEnum
  include TechnologyEnum

  enum currency: {
    LKR: 'LKR',
    USD: 'USD',
    EURO: 'EURO',
    AUD: 'AUD',
    SGD: 'SGD',
    GBP: 'GBP',
    SEK: 'SEK',
    NZD: 'NZD',
    HKD: 'HKD',
    BTC: 'BTC',
    NOK: 'NOK',
    CAD: 'CAD',
    AED: 'AED'
  }

  enum education: {
    bachelors_degree: 'Bachelors Degree',
    diploma: 'Diploma',
    higher_diploma: 'Higher Diploma',
    msc: 'MSc',
    phd: 'PhD'
  }

  enum company_size: {
    below_10: 'Below 10',
    '10_to_20': '10 to 20',
    '20_to_50': '20 to 50',
    '50_to_100': '50 to 100',
    '100_to_500': '100 to 500',
    'more_than_500': 'More than 500'
  }

  enum status: {
    approved: 'approved',
    rejected: 'rejected'
  }

  has_many :salary_votes

  def accurate_votes_count
    salary_votes.select { |vote| vote.accurate? }.size
  end

  def fake_votes_count
    salary_votes.select { |vote| vote.fake? }.size
  end

  def salary_details
    text = ''

    text += "<b>Amount</b> - #{amount.to_fs(:delimited)} #{currency}<br>"
    text += "<b>Year</b> - #{year}<br>"
    text += "<b>Work experience</b> - #{work_experience} year/s<br>"
    text += "<b>Education</b> - #{Salary.educations[education]}<br>" if education.present?
    text += "<b>Company size</b> - #{Salary.company_sizes[company_size]}<br>" if company_size.present?
    text += "<b>Designation</b> - #{Salary.designations[designation]}<br>" if designation.present?
    text += "<b>Primary Technology</b> - #{Salary.primary_technologies[primary_technology]}<br>" if primary_technology.present?
    text += "<b>Pegged to foreign currency?</b> - Yes <br>" if pegged_salary.present?

    text += "<br>" if advice.present?

    text += "<b>Advice for a junior to achieve your salary or even more</b> - #{advice} <br>" if advice.present?

    text
  end
end
