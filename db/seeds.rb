require 'faker'

Location.destroy_all
User.destroy_all
Tree.destroy_all

locations = []
0..20.times { locations << Location.create(name: Faker::Address.city) }

users = []
0..20.times { users << User.create(name: Faker::Name.name) }

trees = []
0..60.times { trees << Tree.create(species: TREE_LIST.sample, user_id: users.sample.id, location_id: locations.sample.id) }
