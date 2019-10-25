class WelcomeController < ApplicationController
  def welcome
  end

  def index
    @results = all_search(params[:search])
  end

  private
  
  def all_search(search)
    if search
      results = [[],[]]
      results[0] = Destination.where("city LIKE (?) OR state LIKE (?) OR country LIKE (?)", "%#{search}%", "%#{search}%", "%#{search}%")
      results[1] = Hack.where("title LIKE (?) OR content LIKE (?)", "%#{search}%", "%#{search}%")
      results
    else
      redirect_to root_path
    end
  end

end