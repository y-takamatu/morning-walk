class LikesController < ApplicationController
  def create
    like = Like.create(user_id: current_user.id,walk_id: params[:walk_id] )
   
      redirect_to walk_path(params[:walk_id])
   
  end

  def destroy
    Like.find_by(user_id: current_user.id,walk_id: params[:walk_id] ).destroy
    redirect_to walk_path(params[:walk_id])
  end


end
