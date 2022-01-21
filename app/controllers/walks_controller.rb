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

  def show
    @walk = Walk.find(params[:id])
  end

  private
  def walk_params
    params.require(:walk).permit(:time,:content,:image).merge(user_id: current_user.id)
  end
end
