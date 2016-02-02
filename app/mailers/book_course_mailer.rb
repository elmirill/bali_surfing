class BookCourseMailer < ApplicationMailer
  
  def book_course_email(name, email, course, message)
    @name = name
    @email = email
    @course = course
    @message = message
    @to = "ant.khay@gmail.com"
    mail(from: "#{@name} <elm.projects.mailer@gmail.com>", to: @to,
      subject: "Surf course booking from Bali Learn to Surf site") do |format|
        format.html { render 'book_course_email.html.haml' }
        format.text { render 'book_course_email.txt.haml' }
    end
  end
  
end