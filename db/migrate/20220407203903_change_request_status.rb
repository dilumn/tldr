class ChangeRequestStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :change_requests, :status, :string, default: 'pending'
  end
end
