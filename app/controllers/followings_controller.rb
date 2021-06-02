class FollowingsController < ApplicationController
  before_action :set_following, only: %i[ destroy ]

  def create
    @following = Following.new(following_params)

    respond_to do |format|
      if @following.save
        format.html { redirect_back fallback_location: root_path, notice: "Following was successfully created." }
        format.json { render :show, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @following.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @following.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: "Following was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_following
    @following = Following.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def following_params
    params.require(:following).permit(:follower_id, :followed_id)
  end
end
