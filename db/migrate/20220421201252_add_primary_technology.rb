class AddPrimaryTechnology < ActiveRecord::Migration[7.0]
  def change
    add_column :salaries, :primary_technology, :string
  end
end
