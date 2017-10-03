class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    # nessa action poderemos usar como perfil do usuário,
    # onde listaremos seus posts, seguidores e quem ele segue, da seguinte forma:
    # @user.posts, @user.followers e @user.following
  end
end
