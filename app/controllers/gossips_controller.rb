class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :show]
  def index
  end
  
  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(params[:titre, :potin])
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
  end
  
  def new
    @gossip = Gossip.new(user: current_user, title: params["titre"], content: params["potin"])
    
  end
  
  def show
    id = session[:user_id]
    @user = User.find(id)
    @gossip = Gossip.find(params[:id].to_i)
    @user = Gossip.find(params[:id].to_i).user
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
