class AddColumnsRemarksOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :remarks, :string
  end
end
