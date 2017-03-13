class AddUserCohortToMakeups < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :user_cohort, :string
  end
end
