# frozen_string_literal: true

class Tax
  include ActiveModel::Model

  TAX_FREE_LIMIT = 1_200_000
  TAX_SLAB = 500_000
  TAX_RATE_MULTIPLIER = 0.06
  EPF_RATE = 0.08
  ETF_RATE = 0.03

  attr_accessor :basic_salary, :allowance, :tax_amount, :epf, :etf, :take_home

  def calculate
    current_salary = basic_salary + allowance
    annual_salary = current_salary * 12
    remaining_taxable = annual_salary - TAX_FREE_LIMIT

    calculated_tax = 0

    loop.with_index do |_, i|
      break unless remaining_taxable.positive?

      if i > 4
        taxable = remaining_taxable
        calculated_tax += taxable * TAX_RATE_MULTIPLIER * (i + 1)
        break
      end

      taxable = remaining_taxable >= TAX_SLAB ? TAX_SLAB : remaining_taxable
      remaining_taxable -= TAX_SLAB

      calculated_tax += taxable * TAX_RATE_MULTIPLIER * (i + 1)
    end

    monthly_calculated_tax = calculated_tax / 12


    self.tax_amount = monthly_calculated_tax
    self.epf = basic_salary  * EPF_RATE
    self.etf = basic_salary * ETF_RATE
    self.take_home = (current_salary - self.tax_amount - self.epf - self.etf)
    self
  end
end
