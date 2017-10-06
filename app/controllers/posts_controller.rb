class PostsController < ApplicationController
  def index
    @user = current_user
    @who_i_follow = @user.following

    following_ids = @who_i_follow.map(&:id)
    @posts = Post.where(user_id: following_ids)
  end
end
