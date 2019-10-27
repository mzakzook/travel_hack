class HacksController < ApplicationController
    before_action :find_hack, only: [:show, :edit, :update, :destroy]
    before_action :categories, only: [:new, :edit]
    before_action :require_login, only: [:new, :create, :edit, :update, :destroy]


  def index
    @destination = Destination.find(params[:destination_id])
    @category = params[:cat]
  end

  def show
    @comment = Comment.new
    if current_user
      @user = User.find(current_user.id)
    end
  end


  def new
    
    @hack = Hack.new
    @destination = Destination.find(params[:destination_id])
    @dest_city = @destination.city
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
    @dest_city = @hack.destination.city
    @user = User.find(session[:user_id])
    
  end

  def update
    @hack.update(hack_params)
    if @hack.valid?
      redirect_to hack_path(id: @hack)
    else
      flash[:errors] = @hack.errors.full_messages
      redirect_to edit_hack_path
    end 
  end

  def destroy
    @hack.destroy
    redirect_to destinations_path
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

