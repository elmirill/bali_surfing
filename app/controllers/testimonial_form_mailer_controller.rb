class TestimonialFormMailerController < ApplicationController
  
  def give_testimonial
  end
  
  def send_form
    name = params[:testimonial_form_name]
    email = params[:testimonial_form_email]
    testimonial = params[:testimonial_form_testimonial]
    captcha = params[:testimonial_form_nickname]
    if captcha.empty?
      if TestimonialFormMailer.testimonial_form_email(name, email, testimonial).deliver_now
        render 'ok'
      else
        render 'error'
      end
    else
      render 'bot'
    end
  end
  
end
