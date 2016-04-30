class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @current_user = User.find_by(id: session[:user_id])
    @post = @current_user.posts.build(post_params)
    @post.save
    redirect_to root_path
  end
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to root_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
    
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
