class OrganizationsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :logo
      t.boolean :pegged, default: false

      t.timestamps
    end
  end
end
