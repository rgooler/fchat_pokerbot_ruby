# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rake'
require 'rspec/core/rake_task'

task :default => :test
task :test => [:spec]

task :runbot do |t|
  sh "ruby bin/bot.rb"
end

RSpec::Core::RakeTask.new do |t|
  t.ruby_opts = '-w'
  t.rspec_opts = '--color --format nested'
end
