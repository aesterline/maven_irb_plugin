if defined?(JRUBY_VERSION)
  $LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

  require 'java'
  require 'maven'

  Maven.load_dependencies
end