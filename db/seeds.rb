puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 360).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(
  name: "Caroline" ,
  age: 30,
  cohort_id: 1
)
s2 = Student.create(
  name: "Ben", 
  age: 29, 
  cohort_id: 2
)
s3 = Student.create(
  name: "Jake",
  age: 28,
  cohort_id: 3
)
s4 = Student.create(
  name: "Sally", 
  age: 31, 
  cohort_id: 4
)
s5 = Student.create(
  name: "Joey",
  age: 32,
  cohort_id: 5
)
s6 = Student.create(
  name: "Nicki",
  age: 30,
  cohort_id: 2
)
s7 = Student.create(
  name: "Bob",
  age: 25, 
  cohort_id: 4
)
s8 = Student.create(
  name: "Sam",
  age: 26,
  cohort_id: 5
)
s9 = Student.create(
  name: "Paul",
  age: 29, 
  cohort_id: 3
)

puts "Done!"