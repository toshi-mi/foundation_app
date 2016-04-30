class LikesController < ApplicationController
  
  def create
    current_user = User.find_by(id: session[:user_id])
    @post = Post.find(params[:post_id])
    like = current_user.likes.build(post_id: @post.id)
    like.save
    redirect_to @post
  end
  
  def destroy
  end
end
