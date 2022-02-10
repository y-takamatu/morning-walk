class LikesController < ApplicationController

  before_action :walk_params

  def create
    
    like = Like.create(user_id: current_user.id,walk_id: params[:walk_id] )
  end

  def destroy
    
    Like.find_by(user_id: current_user.id,walk_id: params[:walk_id] ).destroy
  end

  def walk_params
    @walk = Walk.find(params[:walk_id])
  end
end
