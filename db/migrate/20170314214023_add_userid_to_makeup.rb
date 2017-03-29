class AddUseridToMakeup < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :user_id, :integer
  end
end
