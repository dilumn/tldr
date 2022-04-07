class MarkAllChangeRequestsApproved < ActiveRecord::Migration[7.0]
  def change
    ChangeRequest.update_all(status: 'approved')
  end
end
