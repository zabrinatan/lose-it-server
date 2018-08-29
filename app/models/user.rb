class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  validates :email, :presence => true, :uniqueness => true
  has_many :ingredients, :through => :recipe
  has_many :mealplans
  has_many :nutritions

end
