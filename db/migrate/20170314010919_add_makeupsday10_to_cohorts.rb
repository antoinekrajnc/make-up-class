class AddMakeupsday10ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_10, :integer
  end
end
