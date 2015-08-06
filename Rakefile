# -*- coding: utf-8 -*-
require "rake"
require "rake/testtask"

task :default => :test

$:<<'lib'

task :test do
  require "simplecov"
  SimpleCov.start do
    add_filter "/test/"
  end
  $:<<'test'
  Dir.glob('./test/**/*.rb').each{|file| require file }
end

task :default => [:test]
