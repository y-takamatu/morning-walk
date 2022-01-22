class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to walk_path(params[:walk_id])
    else
      render :create
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id,walk_id: params[:walk_id])
  end
end
