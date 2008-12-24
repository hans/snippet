=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# :topline: remote <add <url>/rm/sync/pull/push> #
# :desc: Manage a remote repository for your snippets #

case $args[0]
when 'add'
  unless $args[1]
    puts 'Usage: snippet remote add <url>'
    exit 1
  end
  `cd #{$basedir}; git remote add origin #{$args[1]}`
when 'rm'
  `cd #{$basedir}; git remote rm origin`
when 'sync'
  `cd #{$basedir}; git pull origin master; git push origin master`
when 'pull'
  `cd #{$basedir}; git pull origin master`
when 'push'
  `cd #{$basedir}; git push origin master`
else
  puts 'Usage: snippet remote <add <url>/rm/sync/pull/push>'
end
