# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'
gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'enumerize'
gem 'rails', '~> 6.1.6', '>= 6.1.6.1'

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'haml_lint', require: false
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'rails_best_practices', require: false
  gem 'rails-erd'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'scss_lint', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
