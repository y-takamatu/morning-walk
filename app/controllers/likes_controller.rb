class LikesController < ApplicationController
  def create
    Like.create(like_params)
  end

  private
  def like_params
    
  end
end
