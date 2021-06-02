class UsersController < ApplicationController
  def show
    @user = user
    @posts = user.posts
    @new_post = current_user.posts.build

    if current_user != @user
      @following = current_user.followings.find_by(followed_id: @user.id)
    end
  end

  private

  def user
    if params.key?(:user_id)
      User.find(params[:user_id])
    elsif params.key?(:username)
      User.find_by!(username: params[:username])
    end
  end
end
