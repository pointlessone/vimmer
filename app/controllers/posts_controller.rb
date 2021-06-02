class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = posts_scope
    @new_post = posts_scope.build
  end

  def show
  end

  def new
    @post = posts_scope.new
  end

  def edit
  end

  def create
    @post = posts_scope.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to short_user_path(@post.user.username), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to short_post_path(@post.user.username, @post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to short_user_path(@post.user.username), notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def posts_scope
    user =
      if params.key?(:user_id)
        User.find(params[:user_id])
      elsif params.key?(:username)
        User.find_by!(username: params[:username])
      end

    user.posts
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = posts_scope.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:body)
  end
end
