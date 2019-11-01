class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :show]
  def index
  end
  
  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    permited_params = params.require(:gossip).permit(:title, :content)
    if @gossip.update(permited_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to home_path
  end
  
  def new
    @gossip = Gossip.new(user: current_user, title: params["titre"], content: params["potin"])
    
  end
  
  def show
    id = session[:user_id]
    @user = User.find(id)
    @gossip = Gossip.find(params[:id].to_i)
    @user = Gossip.find(params[:id].to_i).user
    @comment_all = Comment.where(gossip_id: params[:id])
    @comment_n = Comment.new
  end

  def create
    @gossip = Gossip.new(user: current_user, title: params["titre"], content: params["potin"])

    if @gossip.save
      redirect_to "/home"
    else
      render :new
    end
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
