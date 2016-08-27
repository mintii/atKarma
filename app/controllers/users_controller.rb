module UsersHelper
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		return true if session[:user_id] != nil
	end
end


class UsersController < ApplicationController
	include UsersHelper
	def new
		@user = User.new
	end

	def create 
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.user_id
			render json: { user_id: session[:user_id], 
							currentUserName: @user.email_address,
							password: @user.password
						}
		else 
			@errors = @user.errors.full_messages
			render json: {errors: @errors}
		end
	end

	def show
		@user = current_user
		if @user 
			render json: {
					first_name: @user.first_name, 
					last_name: @user.last_name, 
					email_address: @user.email_address,
					city: @user.city, 
					rating: @user.rating
			}
		else 
			render json: {status: 422}
		end	
	end

	private 

		def user_params
			params.require(:user).permit(:email_address, :password)
		end
end
