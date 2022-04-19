class CreateJoinTableSalariesTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_join_table :salaries, :technologies do |t|
      t.index [:salary_id, :technology_id]
      t.index [:technology_id, :salary_id]
    end
  end
end
