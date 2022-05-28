class MscToMasters < ActiveRecord::Migration[7.0]
  def change
    Salary.where(education: 'MSc').update_all(education: 'Masters')
  end
end
