class BookCourseMailerController < ApplicationController
  
  def book_course
    @surf_courses = SurfCourse.all.order('position ASC')
    @selected_course = params[:course]
  end
  
  def send_form
    name = params[:book_course_name]
    email = params[:book_course_email]
    course = SurfCourse.find(params[:book_course_course][:surf_course_id]).title
    message = params[:book_course_message]
    captcha = params[:book_course_nickname]
    if captcha.empty?
      if BookCourseMailer.book_course_email(name, email, course, message).deliver_now
        render 'ok'
      else
        render 'error'
      end
    else
      render 'bot'
    end
  end
  
end
