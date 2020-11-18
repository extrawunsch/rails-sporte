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
    @offer.save

    redirect_to offer_path(@offer)
  end

  private

  def offer_params
    params.require(:offers).permit(:title, :description, :category, :price, :location, :pick_up_at, :user_id)
  end
end
