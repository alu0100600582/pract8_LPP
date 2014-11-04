$:.unshift File.dirname(__FILE__) + 'lib'

require "bundler/gem_tasks"
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Run RSpec code example"
task :spec do
    # sh "rspec spec/spec_listas.rb"
     sh "rspec spec/test_spec.rb"

end

