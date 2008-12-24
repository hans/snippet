=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

require 'rubygems'
Gem.manage_gems
require 'rake/gempackagetask'

spec = eval File.read('snippet.gemspec')

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

target = "pkg/#{spec.name}-#{spec.version}.gem"

task :default => target do
  puts 'generated latest version'
end

task :bni => target do
  puts `sudo gem install #{target}`
end