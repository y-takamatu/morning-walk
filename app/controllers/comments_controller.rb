class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @walk = Walk.find(params[:walk_id])
    if @comment.save
      CommentChannel.broadcast_to @walk, { comment: @comment, user: @comment.user } 
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id,walk_id: params[:walk_id])
  end
end
