class MealplansController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:addmeal, :destroy]
  before_action :authenticate_user, :only => [:addmeal, :destroy]

  def index
    @mealplans = current_user.mealplans
  end

  def addmeal
    @mealplan = Mealplan.where(:meal => params[:meal], :day => params[:day])
    recipe = params[:recipe]
    @mealplan.update :recipe => recipe, :user_id => current_user.id
    current_user.mealplans << @mealplan

  end

  def destroy
    @mealplan = Mealplan.where(:meal => params[:meal], :day => params[:day])
    recipe = params[:recipe]
    @mealplan.update :recipe => recipe
  end

end
