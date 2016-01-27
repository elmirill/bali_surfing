class ContactFormMailerController < ApplicationController
  
  def send_form
    name = params[:contact_form_name]
    email = params[:contact_form_email]
    message = params[:contact_form_message]
    captcha = params[:contact_form_nickname]
    if captcha.empty?
      if ContactFormMailer.contact_form_email(name, email, message).deliver_now
        render 'ok'
      else
        render 'error'
      end
    else
      render 'bot'
    end
  end
  
end
