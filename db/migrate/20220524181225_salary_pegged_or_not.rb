class SalaryPeggedOrNot < ActiveRecord::Migration[7.0]
  def change
    add_column :salaries, :pegged_salary, :boolean
  end
end
