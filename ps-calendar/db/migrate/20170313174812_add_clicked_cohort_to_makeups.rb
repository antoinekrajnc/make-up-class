class AddClickedCohortToMakeups < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :clicked_cohort, :string
  end
end
