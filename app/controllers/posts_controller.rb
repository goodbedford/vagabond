class PostsController < ApplicationController
  def new
    @post = Post.new
    render :new
  end

  def create
    # post = Post.create(post_params)
    # current_user.posts << post
    post = current_user.posts.create(post_params) 
    redirect_to post_path(post)
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
