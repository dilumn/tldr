class LegalEntityColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :salaries, :company_base_outside, :boolean
  end
end
