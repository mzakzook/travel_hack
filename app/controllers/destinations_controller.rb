class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show]
  before_action :categories, only: :show
  
  def index
    @destinations = Destination.search(params[:search])
  end

  def show
    
    @hack = Hack.new
  end

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end

  def categories
    @categories = ["Transportation", "Dining", "Nightlife", "Cultural", "Adventure", "Rewards/Points"]
  end
end
