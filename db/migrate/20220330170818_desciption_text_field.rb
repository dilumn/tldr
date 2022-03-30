class DesciptionTextField < ActiveRecord::Migration[7.0]
  def change
    change_column :change_requests, :description, :text
  end
end
