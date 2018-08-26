class SessionController < ApplicationController

  def new
  end

  def create
    #get the user with this email address
    # if the passwords match
    # remember this user in the session hash
    # redirect to the homepage
    #else
    # redirect to the login page

    user = User.find_by :email => params[:email]
    respond_to do |format|
    if user.present? && user.authenticate(params[:password])
      format.json { render json: {success: :true} }
      # redirect_to root_path
    else
      format.json { render json: user.errors, status: :unprocessable_entity }
      # redirect_to login_path
    end
  end
    end


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
def user_params
  params.permit(:email, :password, :password_confirmation)
end

end
