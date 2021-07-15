require "standard/rake"

desc "Run linter and tests"
task :check do
  Rake::Task["standard"].execute
  Rake::Task["spec"].execute
end

desc "Run linter and tests for CI"
task :"check:ci" do
  Rake::Task["standard"].execute
  Rake::Task["spec"].execute
end

desc "Run linter"
task :lint do
  Rake::Task["standard"].execute
end

desc "Run linter with autofix"
task :"lint:fix" do
  Rake::Task["standard:fix"].execute
end

desc "Run tests"
task :test do
  Rake::Task["spec"].execute
end
