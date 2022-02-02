class WalksController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]

  def index
    @walks = Walk.order(created_at: :desc)
    @like = Like.new
  end

  def new
    @walk = Walk.new
  end

  def edit
    @walk = Walk.find(params[:id])
    redirect_to action: :index if current_user.id != @walk.user.id
  end

  def update
    walk = Walk.find(params[:id])
    if  walk.update(walk_params)
      redirect_to walk_path(params[:id]) 
    end
  end

  def create
    @walks = current_user.walks
    Walk.create(walk_params)
  end

  def destroy
      walk = Walk.find(params[:id])
      walk.destroy if current_user.id == walk.user.id 
  
  end

  def show
    @walk = Walk.find(params[:id])
    @comment  = Comment.new
    @comments = @walk.comments
  end

  private
  def walk_params
    params.require(:walk).permit(:time,:content,:start_time,:image).merge(user_id: current_user.id)
  end
end
