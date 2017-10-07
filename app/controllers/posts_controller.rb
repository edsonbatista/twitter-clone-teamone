class PostsController < ApplicationController
  def index
    #@user = current_user
    # @who_i_follow = current_user.following
    #
    # following_ids = @who_i_follow.map(&:id)
    # @posts = Post.where(user_id: following_ids)
    @posts = Post.all
  end

  def create
    @post = current_user.posts.new(post_params)
    unless @post.save
      flash.now[:error] = "Could not create post"
    end
    redirect_back fallback_location: root_path
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = current_user.post.find(params[:id])
  end
end
