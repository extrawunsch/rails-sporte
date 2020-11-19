class BookingsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @offer = Offer.find(params[:offer_id])
    start_date = params[:booking][:begin_on].split[0].to_date
    end_date = params[:booking][:begin_on].split[2].to_date
    @booking = Booking.new(begin_on: start_date, end_on: end_date)
    @booking.offer = @offer
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end
end
