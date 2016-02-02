class BookAccommodationMailerController < ApplicationController
  
  def book_accommodation
    @accommodations = Accommodation.all.order('position ASC')
    @selected_accommodation = params[:accommodation]
  end
  
  def send_form
    name = params[:book_accommodation_name]
    email = params[:book_accommodation_email]
    accommodation = Accommodation.find(params[:book_accommodation_accommodation][:accommodation_id]).title
    message = params[:book_accommodation_message]
    captcha = params[:book_accommodation_nickname]
    if captcha.empty?
      if BookAccommodationMailer.book_accommodation_email(name, email, accommodation, message).deliver_now
        render 'ok'
      else
        render 'error'
      end
    else
      render 'bot'
    end
  end
  
end