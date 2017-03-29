class AddMakeupsday14ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_14, :integer
  end
end
