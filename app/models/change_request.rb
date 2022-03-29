class ChangeRequest < ApplicationRecord
  include CurrencyEnum
  include ProportionEnum

  enum request_type: {
    change_existing_details: 'change_existing_details'
  }

  validates :request_type, :company_name, :pegged_currency, presence: true
end
