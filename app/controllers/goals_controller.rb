class GoalsController < ApplicationController
  before_action :find_goal, only: [:show, :edit, :update, :destroy]
  def show
  end

  def edit

  end

  def update
    if @goal.update(goal_params)
      redirect_to goal_path(@goal.id)
    else
      render 'edit'
    end
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
      if @goal.save
        redirect_to goal_path(@goal.id)
      else
        render 'new'
      end
  end

  def destroy
    @goal.destroy
    redirect_to user_path(current_user)
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :location, :price, :likes, :difficulty, :picture_file_name, :picture_content_type, :picture_file_size, :picture_updated_at)
  end

  def find_goal
    @goal = Goal.find(params[:id])
  end
end
