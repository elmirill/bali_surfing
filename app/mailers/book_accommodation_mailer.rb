class BookAccommodationMailer < ApplicationMailer
  
  def book_accommodation_email(name, email, accommodation, message)
    @name = name
    @email = email
    @accommodation = accommodation
    @message = message
    @to = "ant.khay@gmail.com"
    mail(from: "#{@name} <elm.projects.mailer@gmail.com>", to: @to,
      subject: "Accommodataion booking from Bali Learn to Surf site") do |format|
        format.html { render 'book_accommodation_email.html.haml' }
        format.text { render 'book_accommodation_email.txt.haml' }
    end
  end
  
end