class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :amount, null: false
      t.string :currency, null: false
      t.integer :year, null: false
      t.integer :work_experience, null: false
      t.string :education
      t.string :company_size
      t.string :designation
      t.string :status, null: false, default: 'approved'

      t.timestamps
    end
  end
end
