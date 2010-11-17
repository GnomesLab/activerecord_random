# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = 'activerecord_random'
  s.version     = '1.0.1'
  s.summary     = 'Returns a random instance of an ActiveRecord Model'

  s.authors     = ['Gnomeslab, Lda.']
  s.email       = ['mail@gnomeslab.com']
  s.homepage    = 'http://github.com/GnomesLab/activerecord_random/'

  s.description = "ActiveRecord Random is a Ruby Gem that empowers your ActiveRecord Models with the ability to return a random record without using SQL RAND()."

  s.required_rubygems_version = '>= 1.3.7'

  s.add_dependency('activerecord', '~> 3.0.0')

  s.add_development_dependency 'fuubar', '~> 0.0'
  s.add_development_dependency 'mysql2', '~> 2.0'
  s.add_development_dependency 'ruby-debug19', '~> 0.11.0'
  s.add_development_dependency 'rspec', '~> 2.0'
  s.add_development_dependency 'factory_girl_rails', '~> 1.0.0'
  s.add_development_dependency 'database_cleaner', '~> 0.6.0'

  s.files = FileList['lib/**/*.rb', '[A-Z]*', 'spec/**/*.rb'].to_a
  s.require_paths << 'lib'
end
