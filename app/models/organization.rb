class Organization < ApplicationRecord
  include CurrencyEnum
  include ProportionEnum

  validates :name, uniqueness: true

  def remarks_display
    text = ''

    text += "<b>Initial salary pegging value</b> - #{pegging_value} #{pegged_currency}<br>" if pegging_value
    text += "<b>Salary proportion</b> - #{proportion}<br>" if proportion
    text += "<b>Additional remarks</b> - #{remarks}" if remarks

    text
  end
end
