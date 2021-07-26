class SubscriptionsController < ApplicationController
  
    before_action :login_required
    
  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id]) 
  end

  def new
    @subscription = Subscription.new
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save!
      redirect_to "/subscriptions",notice: "サービス「#{@subscription.name}を登録しました。"
    else
      render :new
    end
  end

  def update
    @subscription = Subscription.find(params[:id])

    if @subscription.update(subscription_params)
      redirect_to "/subscriptions", notice: "サービス「#{@subscription.name}を更新しました。"
    else
      render :edit
    end

  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to "/subscriptions", notice:  "サービス「#{@subscription.name}を削除しました。"
  end



  private

  def subscription_params
    params.require(:subscription).permit(:name, :price, :date_start, :date_end, :remind, :memo)
  end

end
