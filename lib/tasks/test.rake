desc "Run tests"
task :test do
  Rake::Task["spec"].execute
end
