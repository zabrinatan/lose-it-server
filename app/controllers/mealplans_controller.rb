class MealplansController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:addmeal]
  before_action :authenticate_user, :only => [:addmeal]

  def index

  end

  def addmeal
    @mealplan = Mealplan.where(:meal => params[:meal], :day => params[:day])
    recipe = params[:recipe]
    @mealplan.update :recipe => recipe
    current_user.mealplans << @mealplan
    abort(current_user.id.to_s)
  end

end
