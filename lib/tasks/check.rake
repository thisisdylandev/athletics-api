require "standard/rake"

desc "Run linter and tests"
task :check do
  Rake::Task["standard"].execute
  Rake::Task["spec"].execute
  Rake::Task["brakeman"].execute
end
