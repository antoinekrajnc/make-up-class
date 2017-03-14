class AddMakeupsday13ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_13, :integer
  end
end
