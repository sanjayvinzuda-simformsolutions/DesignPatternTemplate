class SubscriptionService
  def initialize(user, plan)
    @user = user
    @plan = plan
  end

  # Create subscription 
  def create
    begin
      response = Stripe::Subscription.create({
        customer_id: @user.stripe_customer_id,
        items: [
          { price: @plan.stripe_price_id }
        ]
      })

      JSON.parse(response.subscription.to_s)
    rescue => exception
      { error: exception.message }
    end
  end
end
