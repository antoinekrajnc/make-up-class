class AddMakeupsday8ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_8, :integer
  end
end
