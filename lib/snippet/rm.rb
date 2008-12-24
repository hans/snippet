=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# :topline: rm <name> #
# :desc: Delete a snippet #

unless $args[0]
  puts 'Usage: snippet rm <name>'
  exit 1
end

`cd #{$basedir}; git rm #{$args[0]}`
$repo.commit_index $args[0] + ' deleted on ' + Time.now.to_s
