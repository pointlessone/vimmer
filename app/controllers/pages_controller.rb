class PagesController < ApplicationController
  def landing
    if user_signed_in?
      @posts = Post.where(user_id: current_user.followed_users)
      @new_post = current_user.posts.build
    end
  end
end
