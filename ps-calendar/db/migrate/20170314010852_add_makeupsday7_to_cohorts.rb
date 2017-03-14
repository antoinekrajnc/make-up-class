class AddMakeupsday7ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_7, :integer
  end
end
