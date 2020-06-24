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

#  As long as the form is routed to the
# `create` method we've written (in `config/routes.rb`..  resources :posts), we'll be able to
# initialize a new instance of `Post`, grab those input values from `params`,
# assign them the `post` instance attributes and save the instance to our
# database.
  def create
    # params hold the user's input, in this case from the form. Params is a hash.
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:desciption]
    @post.save
    # It stands to reason that a user who submits a new post would then like to view the successfully-created post.
    redirect_to post_path(@post)
    # we could've redirected the `create` action to the `index` action just as easily.
  end
  # it can't find a `create` view
  # template since, by default, it's trying to render a template called
  # `create.html.erb` (which doesn't exist). Remember, Rails tries to map each
  # controller action directly to a template
  # However, with actions like `create`,
  # we don't want a view template –– all we want is for the action to communicate
  # with the database and then redirect to a different page.
  
end
