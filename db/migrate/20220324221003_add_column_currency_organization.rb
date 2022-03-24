class AddColumnCurrencyOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :pegged_currency, :string
  end
end
