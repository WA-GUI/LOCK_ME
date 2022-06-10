class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @service = Service.find(params[:service_id])
    @booking.user = current_user
    @booking.service = @service
    @booking.save ? (redirect_to resa_path(@service, @booking)) : (render :new)
    # @booking.save ? (redirect_to users_path(current_user)) : (render :new)
  end

  def resa
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to users_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :date, :service_id)
  end
end
