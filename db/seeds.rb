# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
6.times do
  game = Game.new({ name: (Faker::Witcher.monster + ' in ' + Faker::Witcher.location),
                  genre: Faker::Gender.type,
                  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL35hQqjRNNM8jr6e4nicWydYvusDO65QEraPEltPUyepyuOYrag',
                  description: Faker::Community.quotes,
                  price: rand(10..100),
                  rating: rand(0..10)
                  })
  game.save
end
