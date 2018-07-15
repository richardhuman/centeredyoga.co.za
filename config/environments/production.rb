CenterdyogaCoZa::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true
  config.eager_load = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  #config.action_dispatch.x_sendfile_header = "X-Sendfile"
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  config.serve_static_files = false
    
  config.active_support.deprecation = :notify # Send deprecation notices to registered listeners
  config.log_level = :info
  config.log_tags = [ :remote_ip ] #:uuid

  
  #
  # ASSET PIPELINE
  #

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_files = false
  
  # Compress JavaScripts and CSS
  
  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false
  
  # Generate digests for assets URLs. 
  config.assets.digest = true
  
  config.assets.js_compressor  = :uglifier
  config.assets.css_compressor = :sass

  #
  # END ASSET PIPELINE
  # 
  
  

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = false
  #
  #config.action_mailer.delivery_method = :smtp
  #config.action_mailer.smtp_settings = {
  #  :address => 'localhost',
  #  :port => 25,
  #  :domain => 'bio-oil.com',
  #  :enable_starttls_auto => false
  #}
  
end
