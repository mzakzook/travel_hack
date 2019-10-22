class HacksController < ApplicationController
    before_action :find_hack, only: [:show, :edit, :update, :destroy]
    before_action :categories, only: [:new, :edit]
    before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def new
    @hack = Hack.new
    @hack.user

  end

  def create
    @hack = Hack.create(hack_params)
    if @hack.valid?
      redirect_to @hack
    else
      flash.now[:errors] = @hack.errors.full_messages
      render 'new' 
    end
  end

  def edit
  end

  def update
    @hack.update(hack_params)
    if @hack.valid?
      redirect_to @hack
    else
      flash.now[:errors] = @hack.errors.full_messages
      render 'edit'
    end 
  end

  def destroy
    @hack.destroy
    redirect_to hacks_path
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

