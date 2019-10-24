class LikesController < ApplicationController
  before_action :find_hack
  before_action :find_like, only: [:destroy]
  
  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      Like.create(like_params)
      redirect_to @hack
    end
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to hack_path(@hack)
  end

  private

  def find_hack
    @hack = Hack.find(params[:like][:hack_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, hack_id: params[:id]).exists?
  end

  def find_like
    @like = Like.where(user_id: current_user.id, hack_id: params[:id])[0]
  end

  def like_params
    params.require(:like).permit(:user_id, :hack_id)
  end
  
end
