class SessionsController < ApplicationController

	def new

	end

	def create
		
		user = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "You have succesfully logged in"
			redirect_to users_path(user)
		else
			flash.now[:danger] = "There was something wrong with your login information"
			render 'new'
		end

	end

	def destroy

	end

end