class ChangeDay1 < ActiveRecord::Migration[5.0]
  def change
    rename_column :cohorts, :day_1, :week_1A
    rename_column :cohorts, :day_2, :week_1B
    rename_column :cohorts, :day_3, :week_2A
    rename_column :cohorts, :day_4, :week_2B
    rename_column :cohorts, :day_5, :week_3A
    rename_column :cohorts, :day_6, :week_3B
    rename_column :cohorts, :day_7, :week_4A
    rename_column :cohorts, :day_8, :week_4B
    rename_column :cohorts, :day_9, :week_5A
    rename_column :cohorts, :day_10, :week_5B
    rename_column :cohorts, :day_11, :week_6A
    rename_column :cohorts, :day_12, :week_6B
    rename_column :cohorts, :day_13, :week_7A
    rename_column :cohorts, :day_14, :week_7B
    rename_column :cohorts, :day_15, :week_8A
    rename_column :cohorts, :day_16, :week_8B
  end
end
