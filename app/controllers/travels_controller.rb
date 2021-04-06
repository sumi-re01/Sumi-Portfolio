class TravelsController < ApplicationController

  def index
    @travel = Travel.new
    @travels = current_user.travels.all
  end

  def create
    travel = Travel.new(travel_params)
    travel.user_id = current_user.id
    if travel.save
      redirect_to travels_path
    else
      render :index
    end
  end

  def show
    @travel_plan = TravelPlan.new
    @travel = Travel.find(params[:id])
    @travel_plans = @travel.travel_plans
  end


  private

  def travel_params
    params.require(:travel).permit(:user_id, :itinerary, :date)
  end

  def travel_plan_params
    params.require(:travel_plan).permit(:plan, :position)
  end

end
