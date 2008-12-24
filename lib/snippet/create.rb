=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# :topline: echo foo | create <name> #
# :desc: Create a new snippet (contents should be sent via STDIN) #

unless $args[0]
  puts 'Usage: snippet create <name> (note: contents of snippet need to be sent via stdin)'
  exit 1
end

name = $args[0].downcase
path = File.join $basedir, name
contents = $stdin.read || $args[1]
f = File.new path, 'w+'
f.puts contents
f.close

`cd #{$basedir}; git add #{name}`
$repo.commit_index name + ' on ' + Time.now.to_s
