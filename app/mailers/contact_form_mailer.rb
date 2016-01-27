class ContactFormMailer < ApplicationMailer
  
  def contact_form_email(name, email, message)
    @name = name
    @email = email
    @message = message
    @to = "ant.khay@gmail.com"
    mail(from: "#{@name} <elm.projects.mailer@gmail.com>", to: @to,
                          subject: "Message from Bali Learn to Surf site") do |format|
        format.html { render 'contact_form_email.html.haml' }
        format.text { render 'contact_form_email.txt.haml' }
    end
  end
  
end
