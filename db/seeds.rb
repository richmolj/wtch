# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lotr = Movie.create!(name: 'Lord of the Rings')
ex_machina = Movie.create!(name: 'Ex Machina')

WatchedAt.create!(watchable: lotr, device: 'appletv')
WatchedAt.create!(watchable: ex_machina, device: 'theatre')

superstore = Show.create!(name: 'Superstore')
superstore_ep_1 = Episode.create!(name: 'ep1', show: superstore)
superstore_ep_2 = Episode.create!(name: 'ep2', show: superstore)
breaking_bad = Show.create!(name: 'Breaking Bad')
bb_ep_1 = Episode.create!(name: 'episode 1', show: breaking_bad)
bb_ep_2 = Episode.create!(name: 'episode 2', show: breaking_bad)

WatchedAt.create!(watchable: superstore_ep_1, device: 'dvr')
WatchedAt.create!(watchable: superstore_ep_2, device: 'dvr')
WatchedAt.create!(watchable: bb_ep_1, device: 'roku')
WatchedAt.create!(watchable: bb_ep_2, device: 'roku')
