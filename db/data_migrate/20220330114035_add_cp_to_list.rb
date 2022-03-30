class AddCpToList < ActiveRecord::Migration[7.0]
  def change
    Organization.create!(
      name: "Capital Placement",
      pegged: true,
      great_place_to_work: false,
      pegged_currency: 'GBP',
      remarks: 'Our base salary starts at £350 for all new employees. Existing employees will get the GBP salary that we paid in February 2022'
    )
  end
end
