class AddMakeupsday5ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_5, :integer
  end
end
