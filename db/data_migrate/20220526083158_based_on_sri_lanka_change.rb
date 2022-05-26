class BasedOnSriLankaChange < ActiveRecord::Migration[7.0]
  def change
    Salary.where(company_base_lk: true).update_all(company_base_lk: false)
    Salary.where(company_base_lk: nil).update_all(company_base_lk: true)
  end
end
