# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Masonry::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USER'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'the-masonry.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
