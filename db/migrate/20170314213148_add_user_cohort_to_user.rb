class AddUserCohortToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_cohort, :string
  end
end
