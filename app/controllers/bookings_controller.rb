class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create

  end
end
