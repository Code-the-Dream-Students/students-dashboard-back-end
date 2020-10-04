# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

students = Student.create([
  {
    username: "jorge-g",
    first_name: "Jorge",
    last_name: "Gabitto",
    email: "jgabitto@gmail.com"
  },
  {
    username: "s-cengiz",
    first_name: "Sinan",
    last_name: "Cengiz",
    email: "scengiz@gmail.com"
  },
  {
    username: "deethedev",
    first_name: "Denilson",
    last_name: "Velasquez",
    email: "deethedev@gmail.com"
  },
  {
    username: "jaochoa",
    first_name: "Johan",
    last_name: "Ochoa",
    email: "jochoa@gmail.com"
  }
])