class PeggingAmountColumnOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :pegging_value, :integer
    add_column :organizations, :proportion, :string

    add_column :change_requests, :pegging_value, :integer
    add_column :change_requests, :proportion, :string
  end
end
