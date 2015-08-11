class UsersController < ApplicationController
  def new

  	@user = User.new
  	render :new

  end

  def show
  	@current_user = User.find(session[:user_id])
  	render :show
  end

  def create
  	# if current_user
   #    redirect_to profile_path
   #  else
      user = User.new(user_params)
  	   if user.save
    		session[:user_id] = user.id
    		redirect_to profile_path

  		else
  		redirect_to signup_path
    	end
  	# end
  end

  def edit
    @user = User.find(params[:id])
    render :edit    
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to profile_path

  end


private 
  	def user_params
  		params.require(:user).permit(:username, :email, :password)
  	end	



end
