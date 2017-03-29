class AddMakeupsday12ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_12, :integer
  end
end
