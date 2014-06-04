class UsersController < ApplicationController

  before_filter :authorize, except: ["new", "create"]

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to root_url, notice: "Thank you for signing up!"
  	else
  		render "new"
  	end
  	
  end

  def show
    # @user = User.find(params[:id])
    @transactions = current_user.transactions.collect  
    @total = 0
   
    
  end

  private
  	def user_params
  		params.require(:user).permit(:user,:email,:password_digest,:password,:password_confirmation)
  	end
end
