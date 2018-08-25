class Recipe < ApplicationRecord
  has_many :ingredients
  has_and_belongs_to_many :users
  has_many :nutritions
end
