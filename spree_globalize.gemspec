# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_globalize/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_globalize'
  s.version     = SpreeGlobalize.version
  s.summary     = 'Provides globalization features for Spreecommerce.'
  s.description = s.summary

  s.author      = 'Sean Schofield'
  s.email       = 'sean.schofield@gmail.com'
  s.homepage    = 'http://spreecommerce.com'
  s.license     = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version =  '3.1.14.rails.5.2.8.1'
  s.add_dependency 'goca-spree-core', spree_version

  s.add_runtime_dependency 'spree_i18n'
  s.add_runtime_dependency 'friendly_id', '~> 5.2.0'
  s.add_runtime_dependency 'friendly_id-globalize', '1.0.0.alpha3'
  s.add_runtime_dependency 'globalize'
  s.add_runtime_dependency 'i18n_data'
  s.add_runtime_dependency 'rails-i18n'
  s.add_runtime_dependency 'kaminari-i18n'
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'acts_as_paranoid'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'capybara', '~> 2.14.0'
  s.add_development_dependency 'capybara-screenshot', '~> 1.0.11'
  s.add_development_dependency 'database_cleaner', '~> 1.5.3'
  s.add_development_dependency 'factory_girl', '~> 4.8.0'
  s.add_development_dependency 'ffaker', '~> 2.2.0'
  s.add_development_dependency 'mysql2', '~> 0.4.10'
  s.add_development_dependency 'pg', '~> 0.21.0'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'puma'
  s.add_development_dependency 'pry-rails', '~> 0.3.4'
  s.add_development_dependency 'rubocop', '~> 0.49.0'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'rspec-rails', '~> 3.5.2'
  s.add_development_dependency 'sqlite3', '~> 1.3.13'
  s.add_development_dependency 'simplecov', '~> 0.12.0'
  s.add_development_dependency 'guard-rspec', '~> 4.2.0'
  s.add_development_dependency 'sprockets-rails', '~> 3.2.0'
end
