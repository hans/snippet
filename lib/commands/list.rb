# snippet list #
# :desc: List all available snippets. #

exists = false
ignore = ['.', '..', '.git']
Dir.foreach($basedir) do |f|
  next unless ignore.index(f).nil?
  puts f
end
