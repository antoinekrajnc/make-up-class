class AddMakeupsday2ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_2, :integer
  end
end
