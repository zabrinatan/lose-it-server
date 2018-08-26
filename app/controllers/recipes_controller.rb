class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def apicall
    q = params[:q]
    @recipe = Recipe.new
    recipe_url = "https://api.edamam.com/search?q=#{q}&app_id=834d210a&app_key=5746ad44a220392bdfb46f4ed052f6e4&from=0&to=10&calories=591-722&health=alcohol-free"
    recipe_info = HTTParty.get recipe_url
    recipe_name = recipe_info['hits'][0]['recipe']['label'];

    # @recipe.label = recipe_name;
    # @recipe.image = recipe_info['hits'][0]['recipe']['image']
    # @recipe.url = recipe_info['hits'][0]['recipe']['url']
    # @recipe.yield = recipe_info['hits'][0]['recipe']['yield']
    # @recipe.totalTime = recipe_info['hits'][0]['recipe']['totalTime']
    # @recipe.calories = recipe_info['hits'][0]['recipe']['calories']

        respond_to do |format|
        if @recipe.save
          # format.html { redirect_to user, notice: "User was successfully created."}
          format.json { render :json => recipe_info }
        else
          # format.html { render :new }
          format.json { render json: @recipe.errors, status: :unprocessable_entity }
        end
        end
      end

  def new

  end

  def show

  end


end
