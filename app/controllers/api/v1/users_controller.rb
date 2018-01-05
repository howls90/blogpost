module Api
	module V1
		class UsersController < ApplicationController
			before_action :authenticate_user

			def index
				users = User.all
				render json: {status: 'SUCCESS', message: 'List of Users', data: users}, status: :ok
			end

		end
	end
end