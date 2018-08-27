class Mealplan < ApplicationRecord
  belongs_to :user, :optional => true
  # has_many :recipes ;
end
