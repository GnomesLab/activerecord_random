require 'rake'
require 'rake/rdoctask'
require 'rake/gempackagetask'

desc 'Generate documentation for the ActiveRecord Random Ruby Gem'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActiveRecord Random'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.ruby_opts = '-w'
  end

  task :default => :spec
rescue LoadError
  raise 'RSpec could not be loaded. Run `bundle install` to get all development dependencies.'
end

# Rubygems
namespace :rubygems do
  gemspec = eval(File.read('activerecord_random.gemspec'))
  Rake::GemPackageTask.new(gemspec) do |pkg|
    pkg.gem_spec = gemspec
  end

  desc "build the gem and release it to rubygems.org"
  task :release => :gem do
    sh "rake spec"
    sh "gem push pkg/activerecord_random-#{gemspec.version}.gem"
  end
end
