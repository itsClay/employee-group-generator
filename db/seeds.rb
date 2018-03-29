# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = User.create!(username: 'user', password: 'password')

Company.destroy_all
company1 = Company.create!(name: 'ACME')

Employee.destroy_all
employee1 = Employee.create!(first_name: 'John', last_name: 'Snow')
employee2 = Employee.create!(first_name: 'Arya', last_name: 'Stark')
employee3 = Employee.create!(first_name: 'The', last_name: 'Mountain')
employee4 = Employee.create!(first_name: 'Ned', last_name: 'Stark')
employee5 = Employee.create!(first_name: 'Tyrion', last_name: 'Lannister')
employee6 = Employee.create!(first_name: 'Robert', last_name: 'Boratheon')
employee7 = Employee.create!(first_name: 'Daenerys', last_name: 'Targaryen')

Group.destroy_all
group1 = Group.create!(company_id: Company.first.id)