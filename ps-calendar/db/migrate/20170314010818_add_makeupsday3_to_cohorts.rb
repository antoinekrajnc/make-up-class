class AddMakeupsday3ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_3, :integer
  end
end
