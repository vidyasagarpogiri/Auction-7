class BidsController < ApplicationController
  before_action :set_bid,          only: [:destroy]
  before_action :set_item,         only: [:destroy]
  # before_action :auth_create_bid,  only: [:create]
  # before_action :auth_destroy_bid, only: [:destroy]


  def create
    @bid = Bid.new(bid_params)
    if @bid.save
      redirect_to @bid.item, notice: "You have successfully bidded."
    else
      redirect_to @bid.item, notice: "Your Bid could not be placed."
    end
  end

  def destroy
    @bid.destroy
    redirect_to @item, notice: "Your bid has been deleted."
  end

  private

    # def auth_create_bid
    #   redirect_to 'items#show' and return
    #   signed_in? && current_user.id != @item.user_id
    # end


    def set_bid
      @bid = Bid.find(params[:id])
    end

    def set_item
      @item = @bid.item
    end

    def bid_params
      params.require(:bid).permit(:amount, :user_id, :item_id)
    end

end
