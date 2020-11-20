class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    # All Bookings that exist in my app
    # Filter into three categories:
    # => Incoming Bookings: Bookings for my for created offer // offer.user = me
    user = current_user
    @offers = user.host_offers
    # => Outgoing Bookings: Bookings that I created // booking.user = me
    @bookings = user.bookings
    #user = current_user
    #Booking.where(user_id: user)
    #@bookings.user =
    # => Irrelevant Bookings: Neither for my offer and aren't my bookings // anything else
  end

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
      redirect_to success_booking_path(@booking)
    else
      render :new
    end
  end

  def success
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_on, :end_on)
  end
  
end
