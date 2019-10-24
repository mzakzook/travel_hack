class HacksController < ApplicationController
    before_action :find_hack, only: [:show, :edit, :update, :destroy]
    before_action :categories, only: [:new, :edit]
    before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def new
    @hack = Hack.new
    @destination = Destination.find(params[:destination_id])
    @user = User.find(session[:user_id])
  end

  def create
    @hack = Hack.create(hack_params)    
    if @hack.valid?
      redirect_to hack_path(id: @hack)
    else
      flash[:errors] = @hack.errors.full_messages
      redirect_to new_destination_hack_path(params[:destination_id]) 
    end
  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @user = User.find(session[:user_id])
  end

  def update
    @hack.update(hack_params)
    if @hack.valid?
      redirect_to destination_hack_path(id: @hack)
    else
      flash[:errors] = @hack.errors.full_messages
      redirect_to edit_destination_hack_path
    end 
  end

  def destroy
    @hack.destroy
    redirect_to destination_path(params[:destination_id])
  end

  private

  def find_hack
    @hack = Hack.find(params[:id])
  end

  def hack_params
    params.require(:hack).permit(:category, :title, :content, :user_id, :destination_id)
  end

  def categories
    @categories = ["Transportation", "Dining", "Nightlife", "Cultural", "Adventure", "Rewards/Points"]
  end

end

