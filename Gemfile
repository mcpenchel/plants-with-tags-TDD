source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.12.0'
gem 'simple_form'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  ######### EXTRA GEMS #########
  # Behaviour Driven Development for Ruby on Rails. Making TDD Productive and
  # Fun.
  #
  # After installing, you need to run:
  # run rails g rspec:install
  gem 'rspec-rails'
  #
  # A library for setting up Ruby objects as test data.
  # gem 'factory_bot'
  # Factory Bot S2 Rails
  gem 'factory_bot_rails'
  #
  ######### EXTRA GEMS #########
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Capybara helps you test web applications by simulating
  # how a real user would interact with your app.
  gem 'capybara', '>= 2.15'

  # This gem provides Ruby bindings for WebDriver and has been
  # tested to work on MRI (2.0 through 2.2).
  # MRI -> Matz's Ruby Interpreter or Ruby MRI
  # Yukihiro Matsumoto, 'Matz', creator of Ruby
  gem 'selenium-webdriver'

  # Run Selenium tests more easily with automatic installation
  # and updates for all supported webdrivers.
  gem 'webdrivers'

  ######### EXTRA GEMS #########
  # Strategies for cleaning databases in Ruby.
  # Can be used to ensure a clean state for testing.
  gem 'database_cleaner'
  #
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners to
  # test common Rails functionality that, if written by hand, would be much
  # longer, more complex, and error-prone.
  gem 'shoulda-matchers'
  ######### EXTRA GEMS #########
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
