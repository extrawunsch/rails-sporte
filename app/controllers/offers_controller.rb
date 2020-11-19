class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = policy_scope(Offer)
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.host = current_user
    authorize @offer
      if @offer.save
        redirect_to success_offer_path(offer)
      else
        render :new
      end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :category, :price, :location, :pick_up_at)
  end
end
