class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @goals = Goal.goal_finder(@user)
  end





  private

  def user_params
    params.require(:user).permit(:user_name, :description, :days_left, :avatar)
  end
end
