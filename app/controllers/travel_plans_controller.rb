class TravelPlansController < ApplicationController

  def create
    @travel = Travel.find(params[:travel_id])
    travel_plan = @travel.travel_plans.create(travel_plan_params)
    travel_plan.save

    @travel = Travel.find(params[:travel_id])
    @travel_plans = @travel.travel_plans
    render 'travels/plans'
  end

  def update
    travel_plan = TravelPlan.find(params[:id])
    travel_plan.update(travel_plan_params)

    @travel = Travel.find(params[:travel_id])
    @travel_plans = @travel.travel_plans
    render 'travels/plans'
  end

  def destroy
    TravelPlan.find_by(id: params[:travel_id], travel_id: params[:id]).destroy

    @travel = Travel.find(params[:id])
    @travel_plans = @travel.travel_plans
    render 'travels/plans'
  end

  private

  def travel_plan_params
    params.require(:travel_plan).permit(:travel_id, :plan, :position)
  end

end
