MelezhaBy::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  config.eager_load = false

  config.action_mailer.default_url_options = { :host => "localhost:3000" }

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true

  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
    :address              => "localhost",
    :port                 => "25",
    :openssl_verify_mode  => 'none',
    :tls                  => false,
    # :domain               => "melezha.by",
    # :user_name            => "denis%torrents.of.by",
    # :password             => "linux2linux",
    # :authentication       => "login",
    # :enable_starttls_auto => false
  }  

end
