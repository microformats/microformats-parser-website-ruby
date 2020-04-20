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
gem 'rubocop', '~> 0.82.0', require: false
gem 'rubocop-rspec', '~> 1.38'

# dev and testing
group :development, :test do
  gem 'byebug', '~> 10.0', platform: :mri
  gem 'factory_bot_rails', '~> 4.11'
  gem 'guard-rspec', '~> 4.7'
  gem 'nokogiri', '~> 1.10'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 3.9'
  gem 'simplecov', '~> 0.18.5', require: false
  gem 'spring-commands-rspec', '~> 1.0'
end

# dev
group :development do
  gem 'listen', '~> 3.2'
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '~> 3.7'

  # For measuring page/code performance
  gem 'rack-mini-profiler', '~> 1.1'

  # For memory profiling
  gem 'memory_profiler', '~> 0.9.14'

  # For call-stack profiling flamegraphs
  gem 'fast_stack', '~> 0.2.0'
  gem 'flamegraph', '~> 0.9.5'
  gem 'stackprof', '~> 0.2.15'
end

# windows dev
gem 'tzinfo-data', '~> 1.2019', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
