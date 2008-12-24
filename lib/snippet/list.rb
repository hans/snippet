=begin
Copyright (c) 2008 Hans Engel
See the file LICENSE for licensing details.
=end

# :topline: list #
# :desc: List all available snippets. #

exists = false
ignore = ['.', '..', '.git']
Dir.foreach($basedir) do |f|
  next unless ignore.index(f).nil?
  puts f
end
