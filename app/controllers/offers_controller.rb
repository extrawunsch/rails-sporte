class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = policy_scope(Offer)

    sql_query = "category ILIKE :query OR title ILIKE :query OR description ILIKE :query"
    if params[:query].present?
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
    else
      @offers = Offer.all
    end

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: 
          { offer: offer }),
        image_url: helpers.asset_url('marker.png')
      }
    end
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
        redirect_to success_offer_path(@offer)
      else
        render :new
      end
  end

  def success
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :category, :price, :location, :pick_up_at, :photo)
  end
end
