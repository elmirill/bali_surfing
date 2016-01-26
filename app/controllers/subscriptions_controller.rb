class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: :destroy

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)
    
    if @subscription.phone.empty?
      respond_to do |format|
        if @subscription.save
          format.html { redirect_to root_path, notice: 'Subscribed!' }
          format.json { render :show, status: :created, location: @subscription }
          format.js
        else
          format.html { render :new }
          format.json { render json: @subscription.errors, status: :unprocessable_entity }
          format.js
        end
      end
    else
      redirect_to :back, notice: 'Subscribed!'
      format.js
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: 'Subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:name, :email, :phone)
    end
end
