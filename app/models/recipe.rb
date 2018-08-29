class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :user, :optional => true
  # belongs_to :mealplan , :optional => true
end
