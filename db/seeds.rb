# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mission_1 = Mission.create(title: "apollo 14", time_in_space: 495)
mission_2 = Mission.create(title: "apollo 15", time_in_space: 100)
mission_3 = Mission.create(title: "apollo 16", time_in_space: 423)
mission_4 = Mission.create(title: "apollo 17", time_in_space: 250)

ast_1 =Astronaut.create(name: "Silver", age: 42, job: "Engineer")
ast_2 = Astronaut.create(name: "Tom", age: 50, job: "Chemist")
ast_3 = Astronaut.create(name: "Neil Armstrong", age: 34, job: 'Commander')

ast_4  = Astronaut.create(name: "mike", age: 31, job: 'Engineer')
ast_5 = Astronaut.create(name: "Ian", age: 28, job: 'Navigator')
ast_6 = Astronaut.create(name: "Martha", age: 45, job: 'Commander')

p "Created #{Mission.count} Missions"
p "Created #{Astronaut.count} Astronauts"
