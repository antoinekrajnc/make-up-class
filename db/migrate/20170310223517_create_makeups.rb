class CreateMakeups < ActiveRecord::Migration[5.0]
  def change
    create_table :makeups do |t|

      t.timestamps
    end
  end
end
