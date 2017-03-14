class AddMakeupsday6ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_6, :integer
  end
end
