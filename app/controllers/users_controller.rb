class UsersController < ApplicationController
  def index
  end

  def show
  end





  private

  def user_params
    params.require(:user).permit(:user_name, :description, :days_left, :avatar)
  end
end
