require 'wikipedia'
require 'faker'

Location.destroy_all
User.destroy_all
Tree.destroy_all

def tree_list
  tree_wiki = Wikipedia.find("List of tree genera")
  trees = tree_wiki.content.scan /\'\'\w+\'\'|\[\[\w+\]\]/
  trees.map { |tree| tree.gsub /\'|\[|\]/, "" }
end

locations = []
0..20.times { locations << Location.create(name: Faker::Address.city) }

users = []
0..20.times { users << User.create(name: Faker::Name.name) }

trees = []
0..60.times { trees << Tree.create(species: tree_list.sample, user_id: users.sample.id, location_id: locations.sample.id) }
