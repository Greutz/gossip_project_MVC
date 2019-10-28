class SignUpController < ApplicationController
  def sign_up
  end

  def sign_up_post
    City.create(name: params["city"])
    User.create(city: City.find_by(name: params["city"]), first_name: params["first_name"], last_name: params["last_name"], age: params["age"], description: params["description"], email: params["email"])
    redirect_to "/landing_page/#{User.last.first_name}"
  end

  def landing_page
    @user = User.find_by(first_name: params[:user])
  end
end
