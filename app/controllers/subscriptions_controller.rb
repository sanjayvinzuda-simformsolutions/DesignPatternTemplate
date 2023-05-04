class SubscriptionsController < ApplicationController
  before_action :set_plan

  def create
    result = SubscriptionService.new(current_user, @plan).create
    subscription_response(result)
  end

 
  private
  def set_plan
    @plan = Plan.find_by(id: params[:selected_plan_id])
  end

  # Redirect result of create subscription 
  def subscription_response(result, message)
    res = result[:error] ? { alert: result[:error] } : { notice: 'You have been successfully subscribed.' }
    redirect_to root_path, res
  end
end
