class AddUserNameToMakeups < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :user_name, :string
  end
end
