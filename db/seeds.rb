# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alicia = User.create(:name => "Alicia Maribel", :email => "alicia@abc.com", :password => "vacation")
daniel = User.create(:name => "Daniel Day", :email => "daniel@abc.com", :password => "birthday")

parking_spaces = (100..125).to_a

alicia.cars.create(:make => "Honda", :model => "Odyssey", :year => "2010", :color => "black", :size => "minivan", :parking_space_attributes => {:space_number => parking_spaces.pop})
alicia.cars.create(:make => "Toyota", :model => "Camry", :year => "2004", :color => "blue", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Volkswagen", :model => "Golf", :year => "2014", :color => "green", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Mercedes", :model => "Benz", :year => "2015", :color => "white", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
alicia.cars.create(:make => "Nissan", :model => "Sentra", :year => "2012", :color => "gold", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Hyundai", :model => "Santa Fe", :year => "2080", :color => "green", :size => "SUV", :parking_space_attributes => {:space_number => parking_spaces.pop})

alicia.cars.create(:make => "Honda", :model => "Odyssey", :year => "2010", :color => "black", :size => "minivan", :parking_space_attributes => {:space_number => parking_spaces.pop})
alicia.cars.create(:make => "Toyota", :model => "Camry", :year => "2004", :color => "blue", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Volkswagen", :model => "Golf", :year => "2014", :color => "green", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Mercedes", :model => "Benz", :year => "2015", :color => "white", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
alicia.cars.create(:make => "Nissan", :model => "Sentra", :year => "2012", :color => "gold", :size => "sedan", :parking_space_attributes => {:space_number => parking_spaces.pop})
daniel.cars.create(:make => "Hyundai", :model => "Santa Fe", :year => "2080", :color => "green", :size => "SUV", :parking_space_attributes => {:space_number => parking_spaces.pop})

