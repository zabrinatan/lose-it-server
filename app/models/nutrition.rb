class Nutrition < ApplicationRecord
  belongs_to :user, :optional => true
end
