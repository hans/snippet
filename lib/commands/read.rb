# snippet read #
# :desc: Read the contents of a snippet #

begin
  contents = File.read File.join($basedir, $args[0])
  puts contents
rescue
  puts "The snippet could not be read."
end
