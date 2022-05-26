class BasedOnSriLankaDefault < ActiveRecord::Migration[7.0]
  def change
    rename_column :salaries, :company_base_outside, :company_base_lk
    change_column_default :salaries, :company_base_lk, true 
  end
end
