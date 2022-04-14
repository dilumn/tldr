class AddIsaToList < ActiveRecord::Migration[7.0]
  def change
    Organization.create!(
      name: "ISA / Accelaero",
      pegged: true,
      great_place_to_work: false,
      pegged_currency: 'AED',
      remarks: 'Salary will be fully pegged. EPF, ETF will be calculated on the pegged salary. Will be applicable from April',
      pegging_value: 55,
      proportion: fully
    )
  end
end
