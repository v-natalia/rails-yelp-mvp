# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Ba-Boom',
    address:      '7 Boundary St, London E2 7JE',
    category:     "chinese",
    phone_number: '01 02 03 04 05',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     "french",
    phone_number: '01 02 03 04 05',
  },
    {
    name:         'Mamma Mia',
    address:      '7 Boundary St, London E2 7JE',
    category:     "italian",
    phone_number: '01 02 03 04 05',
  },
  {
    name:         'Belgian Meals',
    address:      '7 Boundary St, London E2 7JE',
    category:     "belgian",
    phone_number: '01 02 03 04 05',
  },
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     "chinese",
    phone_number: '01 02 03 04 05',
  },
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
