class Salary < ApplicationRecord
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

  has_many :salaries_technologies
  has_many :technologies, through: :salaries_technologies

  def salary_details
    text = ''

    text += "<b>Amount</b> - #{amount} #{currency}<br>"
    text += "<b>Year</b> - #{year}<br>"
    text += "<b>Work experience</b> - #{work_experience} years<br>"
    text += "<b>Education</b> - #{education}<br>" if education.present?
    text += "<b>Company size</b> - #{company_size}<br>" if company_size.present?
    text += "<b>Designation</b> - #{designation}<br>" if designation.present?
    text += "<b>Technologies</b> - #{technologies.pluck(:name).join(',')}<br>" unless technologies.empty?

    text
  end
end
