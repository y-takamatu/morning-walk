class WalksController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]
 before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @walks = Walk.order(created_at: :desc)
    @like = Like.new
  end

  def new
    @walk = Walk.new
  end

  def edit
    redirect_to action: :index if current_user.id != @walk.user.id
  end

  def update
    if @walk.update(walk_params)
      redirect_to walk_path(params[:id]) 
    else render :edit
    end
  end

  def create
    @walk = Walk.new(walk_params)
    @walks = current_user.walks
   if @walk.save
    render :create
   else
    render :new 
   end
  end

  def destroy
      @walk.destroy if current_user.id == @walk.user.id 
      redirect_to root_path

  end

  def show
    @comment  = Comment.new
    @comments = @walk.comments
  end

  private
  def walk_params
    params.require(:walk).permit(:time,:content,:start_time,:image).merge(user_id: current_user.id)
  end

  def set_item
    @walk = Walk.find(params[:id])
  end
end
