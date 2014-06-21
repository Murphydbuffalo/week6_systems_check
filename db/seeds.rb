shenanigans = Restaurant.create(
	name: 'Shenanigans',
	address: '187 Farva Lane',
	city: 'Mumford',
	state: 'NY',
	zip_code: '12345',
	description: 'We like cheese too!',
	category: 'American')

shenanigans_review = Review.create(rating: 5, restaurant_id: 1, body: 'The showmanship, the pagentry ...wow!  What a musical.')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
