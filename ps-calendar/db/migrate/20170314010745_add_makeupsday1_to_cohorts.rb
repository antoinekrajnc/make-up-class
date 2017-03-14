class AddMakeupsday1ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_1, :integer
  end
end
