require 'rake/testtask'

task default: %w[test]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_*.rb']
  t.loader = :direct
end

task :run do
  ruby "lib/reg-pol-area.rb"
end
