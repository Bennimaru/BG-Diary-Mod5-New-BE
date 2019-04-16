class Api::V1::GlucosesController < ApplicationController

  def index
    @glucoses = Glucose.all
    render json: @glucoses
  end

  def create
    @glucose= Glucose.create(glucose_params)
    render json: @glucose
  end

  private

  def glucose_params
    params.require(:glucose).permit(:user_id,:datetime,:glucose)
  end

end
