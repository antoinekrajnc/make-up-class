class AddUserEmailToMakeups < ActiveRecord::Migration[5.0]
  def change
    add_column :makeups, :user_email, :string
  end
end
