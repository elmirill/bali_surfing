Clearance.configure do |config|
  config.routes = false
  config.allow_sign_up = false
  config.user_model = User
  config.mailer_sender = "elm.projects.mailer@gmail.com"
end
