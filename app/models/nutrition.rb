class Nutrition < ApplicationRecord
  belongs_to :ingredient, :optional => true
end
