# encoding: utf-8

require 'rubygems'
require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
	gem.name = "where-am-i"
	gem.version = '0.0.1'
	gem.homepage = "http://github.com/mtrense/where-am-i"
	gem.license = "MIT"
	gem.files = FileList['lib/**/*.rb', '[A-Z]*', 'spec/**/*'].to_a
	gem.summary = %Q{Query your current file/place/gem in filesystem}
	gem.description = %Q{Methods to query your current file/place/gem in filesystem}
	gem.email = "dev@trense.info"
	gem.authors = ["Max Trense"]
	gem.add_development_dependency "rspec", "~> 2.8.0"
	gem.add_development_dependency "rdoc", "~> 3.12"
	gem.add_development_dependency "bundler", "~> 1.0.0"
	gem.add_development_dependency "jeweler", "~> 1.8.3"
	gem.add_development_dependency "rcov", ">= 0"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
	spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
	spec.pattern = 'spec/**/*_spec.rb'
	spec.rcov = true
end

task :default => :spec

require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
	version = File.exist?('VERSION') ? File.read('VERSION') : ""

	rdoc.rdoc_dir = 'rdoc'
	rdoc.title = "where-am-i #{version}"
	rdoc.rdoc_files.include('README*')
	rdoc.rdoc_files.include('lib/**/*.rb')
end
