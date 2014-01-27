class BiddingController < ApplicationController
  before_filter :ensure_login
  
  def bid
    bid = Bid.new(params[:bid])
    bid.person = current_user
    
    if bid.save
      redirect_to :controller => "welcome"
    end
  end
end