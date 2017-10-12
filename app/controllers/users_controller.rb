class UsersController < ApplicationController
  def show
    @favorites = Favorite.where("user_id = current_user.id", @user)
  end
end
