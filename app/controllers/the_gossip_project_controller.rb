class TheGossipProjectController < ApplicationController
  def home
    @gossip = Gossip.last
    @gossips = Gossip.all
    @user = User.find_by(first_name: params[:user])
  end

  def team
    
  end
end
