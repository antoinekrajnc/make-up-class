class AddMakeupsday4ToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :makeups_day_4, :integer
  end
end
