class PostsController < ApplicationController
  def new
    @post = Post.new
    

    render :new


  end

  def create  
    # post = Post.create(post_params)
    # current_user.posts << post
    if session[:current_city]
      current_city = City.find(session[:current_city])
      post = current_user.posts.create(post_params)
      post.city = current_city
      if post.save
        redirect_to post_path(post)
      else
      p post.errors.full_messages
        flash[:error] = post.errors.full_messages
        redirect_to new_post_path
      end  
    else
      flash[:error] = "Please pick another city."
      redirect_to root_path
    end
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    post = Post.find(params[:id])
    if current_user.posts.include? post
      post.update_attributes(post_params)
      redirect_to post_path
    else
      redirect_to login_path
    end
  end

  

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(post.user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
