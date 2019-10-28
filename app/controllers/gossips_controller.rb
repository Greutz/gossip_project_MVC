class GossipsController < ApplicationController
  def gossip
    @gossip = Gossip.find(params[:id].to_i)
    @user = Gossip.find(params[:id].to_i).user
  end
end
