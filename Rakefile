require 'rake/testtask'

task default: %w[test]

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.test_files = FileList['test/*.rb']
  t.loader = :rake
  t.verbose = true
end

task :run do
  ruby "lib/reg-pol-area.rb"
end
