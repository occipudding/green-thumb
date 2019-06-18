class User < ApplicationRecord
  has_many:trees
  has_many:locations, through: :trees

   validates :name,  presence: true
   validates :name, length: { minimum:6 }
   # validates :name, :presence => {:message => "must be given please"}
   validates :name, uniqueness: true




end
