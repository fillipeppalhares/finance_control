source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"
gem "rails", "~> 7.0.3"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg"
gem "puma"
gem "redis"
gem "sidekiq", "~>6.0.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "awesome_print"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "table_print"
end

group :development do
  gem "brakeman"
  gem "bullet"
  gem "fix-db-schema-conflicts"
  gem "rubocop", require: false
  gem "spring-commands-rspec"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "webdrivers"
end

# Custom
gem "acts_as_tenant"
gem "devise"
gem "enumerate_it"
gem "friendly_id"
gem "paper_trail"
gem "rails-i18n"
gem "show_for"
gem "simple_calendar"
gem "simple_form"
gem "strip_attributes"
gem "ransack"
gem "cancancan"