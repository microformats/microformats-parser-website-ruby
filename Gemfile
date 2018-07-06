source 'https://rubygems.org'
ruby '2.5.1'

# app server
gem 'rails', '~> 5.2.0'

# database
gem 'pg'

# webserver
gem 'puma'

# webserver
gem 'microformats', '~> 4.0.7'

# assets
gem 'autoprefixer-rails'
gem 'bootstrap'
gem 'jquery-rails'
gem 'sass-rails'
gem 'uglifier'

# For codestyle guide and linting
gem 'rubocop', require: false
gem 'rubocop-rspec'

# dev and testing
group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails'
  gem 'guard-rspec'
  gem 'nokogiri'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'spring-commands-rspec'
end

# dev
group :development do
  gem 'listen', '~> 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'

  # For measuring page/code performance
  gem 'rack-mini-profiler'

  # For memory profiling
  gem 'memory_profiler'

  # For call-stack profiling flamegraphs
  gem 'fast_stack'
  gem 'flamegraph'
  gem 'stackprof'
end

# windows dev
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
