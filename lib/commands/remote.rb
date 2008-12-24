# snippet remote #
# :desc: Manage a remote repository for your snippets #

case $args[0]
when 'add'
  `cd #{$basedir}; git remote add origin #{$args[1]}`
when 'rm'
  `cd #{$basedir}; git remote rm origin`
else
  `cd #{$basedir}; git pull origin master; git push origin master`
end
