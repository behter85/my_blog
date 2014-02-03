class PostsController < ApplicationController
 
	def new

	end

	
     
	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to @post
	end

	
	  def post_params
    	params.require(:post).permit(:title, :text)
  	  end

  	def show
  		@post = Post.find(params[:id])
	end

	def index # Show all records from the database
 	   @posts = Post.all
	end

end