class CreateCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.string :title
      t.integer :batch_number
      t.string :instructor
      t.date :day_1
      t.date :day_2
      t.date :day_3
      t.date :day_4
      t.date :day_5
      t.date :day_6
      t.date :day_7
      t.date :day_8
      t.date :day_9
      t.date :day_10
      t.date :day_11
      t.date :day_12
      t.date :day_13
      t.date :day_14
      t.date :day_15
      t.date :day_16

      t.timestamps
    end
  end
end
