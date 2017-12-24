module Api
	module V1
		class CommentsController < ApplicationController
			def index
				comments = Comment.all
				render json: {status: 'SUCCESS', message: 'List of Comments', data: comments}, status: :ok
			end

			def show
	        	comment = Comment.find(params[:id])
	        	render json: {status: 'SUCCESS', message:'Loaded comments', data: comment},status: :ok
	      	end

	      	def create
	        	comment = Comment.new(comment_params)

	        	if comment.save
	          		render json: {status: 'SUCCESS', message:'Saved comment', data: comment},status: :ok
	        	else
	          		render json: {status: 'ERROR', message:'Comment not saved', data: comment.errors},status: :unprocessable_entity
	        	end
	      	end

	      	def destroy
	        	comment = Comment.find(params[:id])
	        	comment.destroy
	        	render json: {status: 'SUCCESS', message:'Deleted comment', data: comment},status: :ok
	      	end

	      	def update
	        	comment = Comment.find(params[:id])
	        	if comment.update_attributes(comment_params)
	          		render json: {status: 'SUCCESS', message:'Updated comment', data: comment},status: :ok
	        	else
	          		render json: {status: 'ERROR', message:'Post not updated', data: comment.errors},status: :unprocessable_entity
	        	end
	      	end

	      	private
	      	def comment_params
	        	params.permit(:body)
			end
		end
	end
end