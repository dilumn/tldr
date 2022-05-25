class CreateExchangeRate < ActiveRecord::Migration[7.0]
  def change
    create_table :exchange_rates do |t|
      t.string :from, null: false
      t.string :to, null: false
      t.decimal :rate, null: false

      t.timestamps
    end
  end
end
