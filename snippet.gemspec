=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

Gem::Specification.new do |s|
  s.add_dependency 'mojombo-grit', '>= 0.9.3'
  s.author = 'Hans Engel'
  s.bindir = 'bin'
  s.date = Time.now
  s.email = 'spam.me@engel.uk.to'
  s.executables = ['snippet']
  s.files = ['LICENSE',
    'Rakefile',
    'snippet.gemspec',
    'bin/snippet',
    'lib/snippet.rb',
      'lib/snippet/create.rb',
      'lib/snippet/help.rb',
      'lib/snippet/list.rb',
      'lib/snippet/read.rb',
      'lib/snippet/remote.rb',
      'lib/snippet/rm.rb']
  s.homepage = 'http://github.com/hans/snippet'
  s.name = 'snippet'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A command-line tool for managing snippets and syncing them via Git'
  s.version = '1.0'
end