class UserPageController < ApplicationController
  def user_page
    @user = User.find_by(first_name: params[:user])
  end
end
