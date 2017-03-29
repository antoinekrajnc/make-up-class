class AddMakeupsday15ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_15, :integer
  end
end
