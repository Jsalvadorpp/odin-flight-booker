class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @booking.build_passenger
        @flight = Flight.find_by(id: params['id'])
    end

    def create
        @flight = Flight.find_by(id: params['booking']['flight_id'])
        @booking = @flight.bookings.new(booking_params)

        if @booking.save
            PassengerMailer.with(booking: @booking).thank_you_email.deliver_now
            flash[:success] = 'Booking created'
            redirect_to @booking
        else
            render 'new'
        end

    end

    def show
        @booking = Booking.find(params['id'])
    end

    private

    def booking_params
        params.require('booking').permit(
            passenger_attributes: [:name,:email]
        )
    end
end
