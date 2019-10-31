class CityController < ApplicationController
  def show
    @city = City.find(params[:id])
    @gossips_all = Gossip.all
    @users_all = User.all
  end
end
