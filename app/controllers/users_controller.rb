class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @posts = @user.posts
  end
end
