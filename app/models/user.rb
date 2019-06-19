class User < ApplicationRecord
  has_many :trees
  has_many :locations, through: :trees

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true
end
