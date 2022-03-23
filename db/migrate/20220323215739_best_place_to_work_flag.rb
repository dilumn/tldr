class BestPlaceToWorkFlag < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :great_place_to_work, :boolean, default: false
  end
end
