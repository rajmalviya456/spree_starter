Rails.application.routes.draw do
  # Spree routes
  mount Spree::Core::Engine, at: '/'

  # Letter Opener route
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # sidekiq web UI
  require 'sidekiq/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == Rails.application.secrets.sidekiq_username &&
      password == Rails.application.secrets.sidekiq_password
  end
  mount Sidekiq::Web, at: '/sidekiq'
end
