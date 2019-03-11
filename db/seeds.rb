# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###
# Create Fantastic Fiction
###

f = Location.find_or_create_by(:name => "Fantastic Fiction", :phone_number => "123-123-1234")
terry = Author.find_or_create_by(:first_name => "Terry", :last_name => "Goodkind")

BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Wizard's First Rule", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Stone of Tears", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Blood of the Fold", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Temple of the Winds", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Soul of Fire", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Faith of the Fallen", :price=> 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "The Pillars of Creation", :price => 10, :author => terry), :location => f)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "Naked Empire", :price => 10, :author => terry), :location => f)

###
# Create Nova Roma
###

n = Location.find_or_create_by(:name => "Nova Roma", :phone_number => "321-321-4321")
vergil = Author.find_or_create_by(:first_name => "Publius", :last_name => "Vergilius")

 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "The Aeneid", :price => 9.99, :author => vergil), :location => n)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "The Georgics", :price => 9.99, :author => vergil), :location => n)
 BookLocation.find_or_create_by(:book => Book.find_or_create_by(:title => "The Eclogues", :price => 9.99, :author => vergil), :location => n)
