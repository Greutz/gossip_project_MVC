class NewController < ApplicationController
  def new_gossip
  end

  def new_gossip_post
    Gossip.create(user: User.find_by(first_name: params["auteur"]), title: params["titre"], content: params["potin"]).errors.messages
    redirect_to "/home"
  end
end
