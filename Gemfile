ruby '2.5.1'

source 'https://rubygems.org'

# app server
gem 'rails', '5.2.0'

# database
gem 'pg', '1.0.0'

# webserver
gem 'puma', '3.12.0'

# webserver
gem 'microformats', '4.0.7'

# assets
gem 'autoprefixer-rails', '9.1.0'
gem 'bootstrap', '4.1.3'
gem 'jquery-rails', '4.3.3'
gem 'sass-rails', '5.0.7'
gem 'uglifier', '4.1.17'

# For codestyle guide and linting
gem 'rubocop', '0.58.2', require: false
gem 'rubocop-rspec', '1.27.0'

# dev and testing
group :development, :test do
  gem 'byebug', '10.0.2', platform: :mri
  gem 'factory_bot_rails', '4.10.0'
  gem 'guard-rspec', '4.7.3'
  gem 'nokogiri', '1.8.4'
  gem 'rails-controller-testing', '1.0.2'
  gem 'rspec-rails', '3.8.0'
  gem 'simplecov', '0.16.1', require: false
  gem 'spring-commands-rspec', '1.0.4'
end

# dev
group :development do
  gem 'listen', '3.1.5'
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console', '3.6.2'

  # For measuring page/code performance
  gem 'rack-mini-profiler', '1.0.0'

  # For memory profiling
  gem 'memory_profiler', '0.9.11'

  # For call-stack profiling flamegraphs
  gem 'fast_stack', '0.2.0'
  gem 'flamegraph', '0.9.5'
  gem 'stackprof', '0.2.12'
end

# windows dev
gem 'tzinfo-data', '~> 1.2019', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
