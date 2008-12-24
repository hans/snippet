=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# snippet read #
# :desc: Read the contents of a snippet #

begin
  contents = File.read File.join($basedir, $args[0])
  puts contents
rescue
  puts "The snippet could not be read."
end
