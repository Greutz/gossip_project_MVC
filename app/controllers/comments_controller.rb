class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    p params
    permited_params = params.require(:comment).permit(:content)
    Comment.create(permited_params).errors.messages
    Comment.find_by(content: params[:content]).update(user_id: current_user.id, gossip_id: params[:gossip_id])
  end

  def update
  end

  def destroy
  end

end
