require 'fileutils'
require 'aruba/cucumber'
require 'middleman-core/step_definitions/builder_steps'

PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))

Then /a git repository should exist/ do
  `ls -la`.should =~ /.git/
end

Then /a remote named "([^\"]*)" has value "([^\"]*)"/ do |remote, url|
  `git config --get remote.#{remote}.url`.chomp.should == url
end

Then /there is a branch named "([^\"]*)"/ do |branch|
  `git branch`.lines.should include? /branch/
end
