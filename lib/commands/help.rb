=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# snippet help #
# :desc: View the list of available commands #

puts 'Usage: snippet <command> [arguments]'
Dir[File.join(File.dirname(__FILE__), '*.rb')].sort.each do |f|
  desc = File.read(f).match(/# :desc: (.+) #/)[1]
  f = File.basename(f).gsub /\.rb$/, ''
  puts "  " + f + "\r\n\t" + desc
end
