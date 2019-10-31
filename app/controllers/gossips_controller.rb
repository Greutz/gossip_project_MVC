class GossipsController < ApplicationController
  def index
  end
  
  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(params[:titre], params[:potin])
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
  end
  
  def new
    @gossip = Gossip.new(user: User.find_by(first_name: params["auteur"]), title: params["titre"], content: params["potin"])
  end
  
  def show
    @gossip = Gossip.find(params[:id].to_i)
    @user = Gossip.find(params[:id].to_i).user
  end

  def create
    @gossip = Gossip.new(user: User.find_by(first_name: "anonymous"), title: params["titre"], content: params["potin"])

    if @gossip.save
      redirect_to "/home"
    else
      render "/gossips/new"
    end
  end
end
