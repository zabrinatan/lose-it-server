class RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create,:apicall]
  before_action :authenticate_user, :only => [:create]

  def index
    #fix @user to definition to make dynamic based on current user logged in
    user = current_user.id
    @recipes = Recipe.where(:user_id => user)


  end

  def apicall
    q = params[:q]
    recipe_url = "https://api.edamam.com/search?q=#{q}&app_id=834d210a&app_key=5746ad44a220392bdfb46f4ed052f6e4&from=0&to=20&calories=591-722&health=alcohol-free"
    recipe_info = HTTParty.get recipe_url


        respond_to do |format|

          # format.html { redirect_to user, notice: "User was successfully created."}
          format.json { render :json => recipe_info }

        end
      end

  def new

  end
  def create
    #fix @user to definition to make dynamic based on current user logged in
    @recipe = Recipe.new
    @recipe.label = params[:data]['recipe']['label'];
    @recipe.image = params[:data]['recipe']['image'];
    @recipe.url = params[:data]['recipe']['url']
    @recipe.yield = params[:data]['recipe']['yield']
    @recipe.totalTime = params[:data]['recipe']['totalTime']
    @recipe.calories = params[:data]['recipe']['calories']
    @recipe.user_id = current_user.id
    @recipe.save
    current_user.recipes << @recipe
  end

  def show


  end


end
