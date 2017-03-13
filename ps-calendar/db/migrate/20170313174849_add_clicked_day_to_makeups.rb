class AddClickedDayToMakeups < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :clicked_day, :string
  end
end
