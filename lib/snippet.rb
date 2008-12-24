require 'optparse'
require 'grit'

class Snippet
  def initialize(args)
    run_command args.shift, args
  end
  
  def run_command(command, args)
    put_help if command.nil?
    file = File.join File.dirname(__FILE__), 'commands', command + '.rb'
    if File.exists? file
      require file
    else
      put_help
    end
  end

  def put_help
    puts 'Usage: snippet <command> [arguments]', 'For help on commands, run `snippet help`.'
    exit 1
  end
end
