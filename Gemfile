source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.1"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 6.0"
gem "sass-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "pry"
  gem "rspec-rails", "~> 6.0.0"
  gem "standard-rails"
end

group :development do
  gem "letter_opener"
  gem "solargraph"
  gem "web-console"
end

group :test do
  gem "shoulda-matchers", "~> 5.0"
end
