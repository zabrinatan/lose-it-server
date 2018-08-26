class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :user, :optional => true
  has_many :nutritions
end
