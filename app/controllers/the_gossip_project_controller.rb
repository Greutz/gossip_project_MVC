class TheGossipProjectController < ApplicationController
  def home
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
    @gossip = Gossip.last
    @gossips = Gossip.all
    @user = User.find_by(first_name: params[:user])
  end

  def team
    
  end
end
