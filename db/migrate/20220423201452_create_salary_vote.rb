class CreateSalaryVote < ActiveRecord::Migration[7.0]
  def change
    create_table :salary_votes do |t|
      t.references :user, index: true
      t.references :salary, index: true
      t.integer :vote_type, null: false

      t.index [:user_id, :salary_id], unique: true

      t.timestamps
    end
  end
end
