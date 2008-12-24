# snippet create #
# :desc: Create a new snippet #

name = $args[0].downcase
path = File.join $basedir, name
contents = $stdin.read || $args[1]
f = File.new path, 'w+'
f.puts contents
f.close

`cd #{$basedir}; git add #{name}`
$repo.commit_index name + ' on ' + Time.now.to_s
