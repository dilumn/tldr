class CreateRequestChangeTable < ActiveRecord::Migration[7.0]
  def change
    create_table :change_requests do |t|
      t.string :request_type, null: false
      t.string :company_name, null: false
      t.string :pegged_currency, null: false
      t.string :description
      t.string :context

      t.timestamps
    end
  end
end
