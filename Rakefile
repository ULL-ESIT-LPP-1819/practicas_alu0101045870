require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :p7 do
   sh 'bundle exec rspec ./spec/prct07_spec.rb'
end

task :p8 do
   sh 'bundle exec rspec ./spec/prct08_spec.rb'
end
