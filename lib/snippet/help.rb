=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# :topline: help #
# :desc: View the list of available commands #

puts 'Usage: snippet <command> [arguments]'
Dir[File.join(File.dirname(__FILE__), '*.rb')].sort.each do |f|
  contents = File.read f
  desc = contents.match(/# :desc: (.+) #/)[1]
  topline = contents.match(/# :topline: (.+) #/)[1]
  puts "  " + topline + "\r\n\t" + desc
end
