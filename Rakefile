require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--color --format documentation"
end

require 'cucumber'
require 'cucumber/rake/task'
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => :cucumber
