source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'

gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'

gem 'carrierwave'
gem 'rmagick'

gem 'aws-sdk-s3', require: false
gem 'fog-aws'
gem 'image_processing', '~> 1.2'

gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop', '~> 1.27', require: false
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
end

group :production do
  gem 'pg'
end
