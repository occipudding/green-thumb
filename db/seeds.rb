# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# LOCATIONS
canarsie = Location.create(name: "Canarsie")
east_new_york = Location.create(name: "East New York")
park_slope = Location.create(name: "Park Slope")
coney_island = Location.create(name: "Coney Island")

# TREES
tree1 = Tree.create(species: "oak", user_id: 1, location_id: 1)
tree2 = Tree.create(species: "elm", user_id: 1, location_id: 1)
tree3 = Tree.create(species: "spruce", user_id: 1, location_id: 1)
