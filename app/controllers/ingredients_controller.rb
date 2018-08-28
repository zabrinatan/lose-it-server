class IngredientsController < ApplicationController


def index
  @ingredients = Ingredient.all
end

def addingredients
end

end
