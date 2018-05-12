# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# article = Article.new(title: 'NES', body: "A great console")
# article.remote_photo_url = url
# article.save

# Galaxy.destroy_all
# Galaxy.create!(name: 'Andromeda', remote_photo_url: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg', address: 'next to the Milky Way')

# puts 'Cleaning database...'
# Cocktail.destroy_all
# Ingredient.destroy_all


puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Mojito',
    photo:        'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg',
  },
  {
    name:         'Cuba libre',
    photo:'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg',
  },
  {
    name:         'Gin tonic',
    photo: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg',
  },
  {
    name:         'Planter',
    photo: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg',
  },
]

ingredients_attributes = [
  {
    name:         'Menthe',
  },
  {
    name:         'Rhum',
  },
  {
    name:         'Citron',
  },
  {
    name:         'Sucre de canne',
  },
]
Cocktail.create!(cocktails_attributes)
Ingredient.create!(ingredients_attributes)
puts 'Finished!'
