class RemoveTestSalaryData < ActiveRecord::Migration[7.0]
  def change
    Salary.delete_all
    SalaryVote.delete_all
  end
end
