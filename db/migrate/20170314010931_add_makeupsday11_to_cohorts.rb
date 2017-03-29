class AddMakeupsday11ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_11, :integer
  end
end
