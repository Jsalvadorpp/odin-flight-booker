class PassengerMailer < ApplicationMailer

    def thank_you_email
        @booking = params[:booking]
        @url = "http://localhost:3000/bookings/#{@booking.id}"
        mail(to: @booking.passenger.email, subject: 'thank you for booking')
    end
end
