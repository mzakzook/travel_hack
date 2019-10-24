class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except:[:new, :create, :show]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash.now[:errors] = @user.errors.full_messages
      render 'new' 
    end
  end

  def edit
   
  end

  def update
    @user.update(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash.now[:errors] = @user.errors.full_messages
      render 'edit'
    end 
  end

  def destroy
    session.clear
    @user.destroy
    redirect_to root_path
  end

  private

  def find_user
    @user = User.find(params[:id])
    # byebug
  end

  # def set_title
  #   @title = @user.name
  # end

  def user_params
    params.require(:user).permit(:name, :birthdate, :email, :location, :bio, :username, :password, :password_confirmation)
  end

end
