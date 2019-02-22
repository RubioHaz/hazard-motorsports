# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Getting rid of old data'
Jeep.destroy_all
User.destroy_all


p 'Creating 5 Jeeps!'

3.times do
  user = User.create!(
    admin: true,
    email: Faker::Internet.free_email,
    password: 'jeeps-rule',
    first_name: Faker::Ancient.god,
    last_name: Faker::Ancient.hero,
    username: Faker::Internet.free_email,
    avatar: 'www.mypicture.com',
    subscribed: true,
  )
  p 'User created'

  5.times do
    jeep = Jeep.create!(
      name: Faker::FunnyName.name,
      model: ['Bantam BRC-40', 'Jeepster', 'Commando', 'Hurst Jeepster', 'Wagoneer', 'Gladiator', 'Broughwood', 'Comanche', 'Wrangler', 'Cherokee', 'Liberty', 'Commander', 'Compass', 'Patriot', 'Trailhawk', 'Nukizer', 'Pork Chop', 'Rezo', 'Mountain Biker', 'Red Rock Responder', 'Dakar', 'MOJO', 'Chief'].sample,
      year: (1950..2018).to_a.sample,
      description: Faker::Quote.most_interesting_man_in_the_world,
      color: ['red', 'green'].sample,
      location: ['Cali', 'Texas'].sample,
      vin: Faker::Alphanumeric.alphanumeric(17),
      condition: 'used',
      user: user,
      price: 8888
    )
    p 'Jeep created'
  end
end

p 'All done'
