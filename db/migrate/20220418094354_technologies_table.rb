class TechnologiesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.string :status, null: false, default: 'pending'

      t.timestamps
    end
  end
end
