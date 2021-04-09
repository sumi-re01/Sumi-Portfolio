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
  end

  def sort
    @travel = Travel.find(params[:id])
    travel_plan = @travel.travel_plans[params[:from].to_i]
    travel_plan.insert_at(params[:to].to_i + 1)
    head :ok
  end


  private

  def travel_params
    params.require(:travel).permit(:user_id, :itinerary, :date)
  end

end
