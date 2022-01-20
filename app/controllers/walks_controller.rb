class WalksController < ApplicationController
  def index
    @walks = Walk.all
  end

  def new
    @walk = Walk.new
  end

  def create
    Walk.create(walk_params)
  end

  private
  def walk_params
    params.require(:walk).permit(:time,:content)
  end
end
