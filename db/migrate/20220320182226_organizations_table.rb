class OrganizationsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :organiations do |t|
      t.string :name
      t.string :logo
      t.boolean :pegged

      t.timestamps
    end
  end
end
