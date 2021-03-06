class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user
      session[:user_id] = user.id
      flash[:notice]= "Logged In"
  		redirect_to user_path(user)
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_url, notice: "Logged Out"
  end
  
end
