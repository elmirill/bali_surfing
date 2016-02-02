Rails.application.routes.draw do

  resources :galleries, except: [:index, :destroy]
  resources :testimonials
  resources :accommodations, except: [:show]
  resources :surfaris, except: [:show]
  resources :surf_courses, except: [:show]
  resources :subscriptions, only: [:new, :create, :destroy]
  resources :pages
  
  get 'gallery', to: 'galleries#show', as: :show_gallery
  get 'say-hello', to: 'contact_form_mailer#say_hello', as: :say_hello
  get 'give-testimonial', to: 'testimonial_form_mailer#give_testimonial', as: :give_testimonial
  get 'book-course', to: 'book_course_mailer#book_course', as: :book_course
  get 'book-accommodation', to: 'book_accommodation_mailer#book_accommodation', as: :book_accommodation
  get ':id', to: 'pages#show', as: :show_page
  
  post 'contact-form', to: 'contact_form_mailer#send_form', as: :contact_form
  post 'testimonial-form', to: 'testimonial_form_mailer#send_form', as: :testimonial_form
  post 'book-course-form', to: 'book_course_mailer#send_form', as: :book_course_form
  post 'book-accommodation-form', to: 'book_accommodation_mailer#send_form', as: :book_accommodation_form
  
  root 'pages#show', id: 'home'
	
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
