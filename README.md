# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<!-- User
has_many :trees
has_many :locations, through: :trees

t.string :name


Location
has_many :trees
has_many :users, through: :trees

t.string :name


Tree
belongs_to :user
belongs_to :location

t.string :species
t.integer :age, default: 0
t.integer :user_id
t.integer :location_id


'/root'
if user is logged in: trees#index
else: new user form

User#index

User#show
username
trees owned by user (link_to tree)
edit button
delete button
go back button (back to trees#index)

User#edit
change name

User#delete


Tree#index

Tree#new
alias
species
location (dropdown) -- functionality s.t. dropdown populated only by locs w/available space

Tree#show
alias
species
age
location
owned by

Tree#edit
name

Tree#delete
redirect_to some video/image of tree getting cut down


Location#index

Location#show
name
list of trees @ location
free spaces ==> if 0, flash[:message] = "no more spaces"


**later on
google maps api
find_by_location
can move tree if tree < 5yo -->
