class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new #create a new post
    @post.title = params[:title] #add a title 
    @post.description = params[:description] #add descrip
    @post.save #save record
    redirect_to post_path(@post) 
  end

end
