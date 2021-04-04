class TravelPlansController < ApplicationController

  def create
    @travel = Travel.find(params[:travel_id])
    travel_plan = @travel.travel_plans.create(travel_plan_params)
    travel_plan.save
  end

  def update

  end

  def destroy
    TravelPlan.find_by(id: params[:id], travel_id: params[:travel_id]).destroy
  end

  private
  def travel_plan_params
    params.require(:travel_plan).permit(:travel_id, :plan, :position)
  end

end
