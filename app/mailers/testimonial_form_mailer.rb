class TestimonialFormMailer < ApplicationMailer
  
  def testimonial_form_email(name, email, testimonial)
    @name = name
    @email = email
    @testimonial = testimonial
    @to = "ant.khay@gmail.com"
    mail(from: "#{@name} <elm.projects.mailer@gmail.com>", to: @to,
                          subject: "Testimonial from Bali Learn to Surf site") do |format|
        format.html { render 'testimonial_form_email.html.haml' }
        format.text { render 'testimonial_form_email.txt.haml' }
    end
  end
  
end
