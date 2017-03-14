class AddMakeupsday9ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_9, :integer
  end
end
