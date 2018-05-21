# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
task_attributes = [
  {
    name: "Task Desciption",
    poc: "Department",
    dminuscat: "D-120",
    duedate: "Jun-17-2018",
    taskstatus: "Incomplete",
    notes: "Anything extra"
  }
]

task_attributes.each do |attributes|
  Task.create(attributes)
end
