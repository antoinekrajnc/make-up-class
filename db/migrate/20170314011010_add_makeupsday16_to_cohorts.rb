class AddMakeupsday16ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_16, :integer
  end
end
