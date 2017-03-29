# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'cohort_list.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

i = 1
      csv.each do |row|
       c = Cohort.find(i)
       c.title = row['Cohort_Name']
       c.batch_number = row['Batch_Number']
       c.instructor = row['Main_Instructor']
       c.day_1 = row.to_hash['day_1']
       c.day_2 = row.to_hash['day_2']
       c.day_3 = row.to_hash['day_3']
       c.day_4 = row.to_hash['day_4']
       c.day_5 = row.to_hash['day_5']
       c.day_6 = row.to_hash['day_6']
       c.day_7 = row.to_hash['day_7']
       c.day_8 = row.to_hash['day_8']
       c.day_9 = row.to_hash['day_9']
       c.day_10 = row.to_hash['day_10']
       c.day_11 = row.to_hash['day_11']
       c.day_12 = row.to_hash['day_12']
       c.day_13 = row.to_hash['day_13']
       c.day_14 = row.to_hash['day_14']
       c.day_15 = row.to_hash['day_15']
       c.day_16 = row.to_hash['day_16']
       c.update(title: c.title, batch_number: c.batch_number, instructor: c.instructor, day_1: c.day_1, day_2: c.day_2, day_3: c.day_3, day_4: c.day_4, day_5: row['day_5'], day_6: c.day_6, day_7: c.day_7, day_8: c.day_8, day_9: c.day_9, day_10: c.day_10, day_11: c.day_11, day_12: c.day_13, day_14: c.day_14, day_15: c.day_15, day_16: c.day_16)
       c.save
       i+=1
       puts "#{c.title} saved"
end

puts "There is now #{Cohort.count} rows in the database"
