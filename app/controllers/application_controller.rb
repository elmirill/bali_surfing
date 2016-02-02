class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_new_subscription, :get_random_testimonial, :get_random_gallery_image
  
  def set_new_subscription
    @subscription = Subscription.new
  end
  
  def get_random_testimonial
    @random_testimonial = Testimonial.order("RANDOM()").first
  end
  
  def get_random_gallery_image 
    @random_gallery_image = Gallery.first.pictures.order("RANDOM()").first.image.url(:sidebar_thumb) if Gallery.first.pictures.first.present?
  end
  
end
