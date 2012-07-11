# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rake'
require 'rake/testtask'

task :default => :test

task :test => [:test_all]

Rake::TestTask.new(:test_all) do |t|
#  t.libs << "test"
#  t.test_files = FileList['test/webapi_test.rb','test/fchat_test.rb']
#  t.verbose = true
end
