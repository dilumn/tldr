class SalaryAdviceColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :salaries, :advice, :text
  end
end
