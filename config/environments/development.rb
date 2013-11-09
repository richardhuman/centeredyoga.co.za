CenterdyogaCoZa::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  config.eager_load = false    

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false


  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log
  config.log_level = :debug
  config.log_tags = [ :remote_ip ] #:uuid

  

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = false

  #config.action_mailer.delivery_method = :smtp
  #config.action_mailer.smtp_settings = {
  #  :address => 'localhost',
  #  :port => 1025,
  #  :domain => 'bio-oil.com',
  #  :enable_starttls_auto => false
  #}


  #config.action_mailer.delivery_method = :file
  #config.action_mailer.file_settings = {:location => "#{Rails.root}/tmp/mails"}

end

