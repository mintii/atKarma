module UsersHelper
	def current_user
		@current_user = User.find_by(id: 1)
		# @current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		return true if session[:user_id] != nil
	end
end

class TasksController < ApplicationController
	include UsersHelper

	def show
		@tasks = current_user.tasks
		
		if @tasks 

			@tasks.each do |task|
			render json: {
				difficulty: task.difficulty.to_s, 
				points: task.points.to_s, 
				requester_id: task.requester_id.to_s, 
				completer_id: task.completer_id.to_s, 
				category: task.category, 
				completer_beginning_location: task.completer_beginning_location,
				start_time: task.start_time.to_s, 
				finish_time: task.finish_time.to_s, 
				longitude: task.longitude, 
				latitude: task.latitude

			}
			end
		else
			render json: {status: 422}
		end
	end

end
