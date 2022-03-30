class ChangeRequest < ApplicationRecord
  include CurrencyEnum
  include ProportionEnum

  enum request_type: {
    add_new_data: 'add_new_data',
    change_existing_details: 'change_existing_details'
  }

  validates :request_type, :company_name, :pegged_currency, presence: true
end
