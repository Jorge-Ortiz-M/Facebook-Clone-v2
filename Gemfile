source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.5'
# Use postgresql as the database for Active Record
gem 'pg'
gem 'devise'
gem 'rails-erd'       #...........................Gem for generate PDF realtionship models.
gem 'active_storage_validations'      #..........Gem for active storage validations.
gem 'image_processing'      #....................Gem for display images.
gem 'hirb'      #................................Gem for show databases as tables.
gem 'omniauth'      #............................Gem for adding Omniauth.
gem 'omniauth-google-oauth2'      #..............Gem for adding Omniauth using Google.
gem 'omniauth-facebook'       #...................Gem for adding Omniauth using Facebook.
gem 'omniauth-github'       #.....................Gem for adding Omniauth using Github.
gem 'omniauth-rails_csrf_protection'      #......Gem for adding Omniauth protection.
gem 'google-cloud-storage'      #................Gem for storing data in Google Cloud.
gem 'faker'     #...............................Gem for generate fake data.
gem 'friendly_id'     #.........................Gem for make URL friendly.
gem "recaptcha"     #...........................Gem for add recaptcha.
gem 'ransack'     #.............................Gem for search and filter data.
gem 'pagy'      #................................Gem for add pagination.
gem "rolify"      #..............................Gem for add roles.
gem "pundit"      #..............................Gem for add authorizations.
gem 'wicked'      #..............................Gem for separate forms.
gem 'sitemap_generator'     #...................Gem for set sitemaps more secure.
gem 'devise_invitable'      #....................Gem for send invitations through emails.
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'rspec-rails'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
