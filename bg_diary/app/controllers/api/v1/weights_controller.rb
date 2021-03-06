class Api::V1::WeightsController < ApplicationController

  def index
    @weights = Weight.all
    render json: @weights
  end

  def create
    @weight= Weight.create(weight_params)
    render json: @weight
  end

  private

  def weight_params
    params.require(:weight).permit(:user_id,:datetime,:weight)
  end

end
