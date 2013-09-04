source 'https://rubygems.org'
gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems installed for Nyx
gem 'pg', '~>0.15.1'
gem 'devise'
gem 'simple_form'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'json'
gem "paperclip", "~> 3.0"
gem 'devise'
gem 'js-routes'
gem 'haml'
gem 'clockwork'
gem 'delayed_job_active_record'
gem "bootstrap-wysihtml5-rails", "~> 0.3.1.23"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'better_errors'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'
end

  gem "database_cleaner", :group => :test
  gem "email_spec", :group => :test
  gem "factory_girl_rails", :group => :test
  gem 'simplecov', :require => false, :group => :test
  gem 'client_side_validations'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem "capybara"
  gem 'annotate'
  gem 'quiet_assets'

  # BetterErrors.editor = :sublime if defined? BetterErrors  (initializer)
  # http://localhost:3000/__better_errors (reports last exception for debugging)
  gem 'binding_of_caller'
  gem 'meta_request'
  # Add RailsPanel extension in the Chrome Web Store
end


