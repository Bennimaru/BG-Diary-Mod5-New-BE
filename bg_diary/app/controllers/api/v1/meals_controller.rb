class Api::V1::MealsController < ApplicationController

  def index
    @meals = Meal.all
    render json: @meals
  end

  def create
    @meal= Meal.create(meal_params)
    render json: @meal
  end

  private

  def meal_params
    params.require(:meal).permit(:user_id,:datetime,:meal,:type)
  end

end
