class BookingsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_on, :end_on, :offer_id)
  end
end
