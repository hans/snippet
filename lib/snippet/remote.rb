=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# snippet remote #
# :desc: Manage a remote repository for your snippets #

case $args[0]
when 'add'
  `cd #{$basedir}; git remote add origin #{$args[1]}`
when 'rm'
  `cd #{$basedir}; git remote rm origin`
when 'sync'
  `cd #{$basedir}; git pull origin master; git push origin master`
when 'pull'
  `cd #{$basedir}; git pull origin master`
when 'push'
  `cd #{$basedir}; git push origin master`
end
