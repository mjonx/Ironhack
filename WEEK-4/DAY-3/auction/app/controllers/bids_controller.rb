class BidsController < ApplicationController
  def index
    @bids = Bid.order(title: :asc)
  end
end
