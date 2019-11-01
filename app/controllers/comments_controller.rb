class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
    @gossip_id = Gossip.find(params[:gossip_id])
  end

  def create
    permited_params = params.permit(:content)
    @comment = Comment.create(user: current_user, gossip_id: params[:gossip_id].to_i, content: params[:content])
    redirect_to gossip_path(params[:gossip_id])
  end

  def update
    @comment = Comment.find(params[:id])
    permited_params = params.require(:comment).permit( :content)
    if @comment.update(permited_params)
      redirect_to gossip_path(params[:gossip_id])
    else
      render "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(params[:gossip_id])
  end

end
