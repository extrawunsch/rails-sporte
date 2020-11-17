class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index

    @offers = policy_scope(Offer)
  end

end
