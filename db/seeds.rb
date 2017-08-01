# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# require 'audiosearch'
# # create a client
# client = Audiosearch::Client.new(
#   :id     => "#{ENV['AS_ID']}",
#   :secret => "#{ENV['AS_SECRET']}",
#   :host   => 'https://www.audiosear.ch/',
#   :debug  => false,
# )
#
# show = client.get('/shows/1234')
# Podcast.create(name: show.blah)

User.create(username: "Luke", password_digest: "$2a$10$6IFg2U/MOdi7by7r9S1Cpe6FmCQvSA5W3Db/oiBbZtZOdB04rAOVS")
Podcast.create(name: "Podcast")
SelectedPodcast.create(user_id: 1, podcast_id: 1)
