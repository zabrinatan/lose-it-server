class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create,:apicall]
  before_action :authenticate_user, :only => [:create]

  def index
    @recipes = current_user.recipes


  end

  def apicall
    q = params[:q]
    recipe_url = "https://api.edamam.com/search?q=#{q}&app_id=834d210a&app_key=5746ad44a220392bdfb46f4ed052f6e4&from=0&to=50"
    recipe_info = HTTParty.get recipe_url


        respond_to do |format|

          # format.html { redirect_to user, notice: "User was successfully created."}
          format.json { render :json => recipe_info }

        end
      end

  def new

  end
  def create
    @recipe = Recipe.new
    @recipe.label = params[:data]['recipe']['label'];
    @recipe.image = params[:data]['recipe']['image'];
    @recipe.url = params[:data]['recipe']['url']
    @recipe.yield = params[:data]['recipe']['yield']
    @recipe.totalTime = params[:data]['recipe']['totalTime']
    @recipe.calories = params[:data]['recipe']['calories']
    @recipe.user_id = current_user.id

    ingredients_array = params[:data]['recipe']['ingredients']
    ingredients_array.each do |ingredient|
      @recipe.ingredients << Ingredient.create(:ingredientLabel => ingredient["text"])
    end

    @recipe.save
    current_user.recipes << @recipe

  end

  def show

      @recipe = Recipe.find params[:id]

  end


end
