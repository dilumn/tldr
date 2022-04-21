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
    bachelors_degree: 'bachelors_degree',
    diploma: 'diploma',
    higher_diploma: 'higher_diploma',
    msc: 'msc',
    phd: 'phd'
  }

  enum company_size: {
    below_10: 'below_10',
    '10_to_20': '10_to_20',
    '20_to_50': '20_to_50',
    '50_to_100': '50_to_100',
    '100_to_500': '100_to_500',
    'more_than_500': 'more_than_500'
  }

  def salary_details
    text = ''

    text += "<b>Amount</b> - #{amount} #{currency}<br>"
    text += "<b>Year</b> - #{year}<br>"
    text += "<b>Work experience</b> - #{work_experience} years<br>"
    text += "<b>Education</b> - #{education}<br>" if education.present?
    text += "<b>Company size</b> - #{company_size}<br>" if company_size.present?
    text += "<b>Designation</b> - #{designation}<br>" if designation.present?
    text += "<b>Primary Technology</b> - #{primary_technology}<br>" if primary_technology.present?

    text
  end
end
