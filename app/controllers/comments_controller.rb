class CommentsController < ApplicationController
  def create
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, prototype_id: params[:prototyoe_id])
  end
end
