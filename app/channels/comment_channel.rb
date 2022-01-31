class CommentChannel < ApplicationCable::Channel
  def subscribed
    @walk = Walk.find(params[:walk_id]) 
    stream_for @walk
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
