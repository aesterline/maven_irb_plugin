# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "maven_irb_plugin"
  gem.homepage = "http://github.com/aesterline/maven_irb_plugin"
  gem.license = "Apache 2.0"
  gem.summary = %Q{An irb plugin that will load your maven environment into your jruby irb session.}
  gem.description = %Q{Plugin reads the pom.xml file in your current directory and loads your project dependencies into your jruby irb session.}
  gem.email = "adam@esterlines.com"
  gem.authors = ["Adam Esterline"]
  gem.platform = Gem::Platform::JAVA
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "maven_irb_plugin #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
