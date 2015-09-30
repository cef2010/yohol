class UsersController < ApplicationController
  def index
    @users = User.all
    @goals = Goal.all
  end

  def show
    @user = User.find(params[:id])
    @goals = Goal.where(user_id: @user.id)
  end





  private

  def user_params
    params.require(:user).permit(:user_name, :description, :days_left, :avatar)
  end
end
