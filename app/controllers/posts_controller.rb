class PostsController < ApplicationController
  def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
  		respond_to do |format|
        format.js
      end
		else
		  # Handle errors
		end
	end

	private

	def post_params
		params.require(:post).permit(:title)
	end
end
