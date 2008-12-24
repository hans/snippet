=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# snippet rm #
# :desc: Delete a snippet #

`cd #{$basedir}; git rm #{$args[0]}`
$repo.commit_index $args[0] + ' deleted on ' + Time.now.to_s
