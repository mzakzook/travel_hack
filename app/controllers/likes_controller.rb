class LikesController < ApplicationController
  before_action :find_like, only: [:destroy]
  
  def create

    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      like = Like.create(like_params)
      redirect_to hack_path(like.hack_id)
    end
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to hack_path(@like.hack_id)
  end

  private

  def already_liked?
    Like.where(user_id: current_user.id, hack_id: params[:id]).exists?
  end

  def find_like
    @like = Like.find_by(user_id: current_user.id, hack_id: params[:id])
  end

  def like_params
    params.require(:like).permit(:user_id, :hack_id)
  end
  
end
