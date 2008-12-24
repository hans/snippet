require 'grit'

class Snippet
  def initialize(args)
    $args = args
    $basedir = File.join ENV['HOME'], '.snippet'
    run_command
  end
  
  def run_command
    command = $args.shift
    init_repo command
    put_help if command.nil?
    file = File.join File.dirname(__FILE__), 'commands', command + '.rb'
    if File.exists? file
      require file
    else
      put_help
    end
  end

  def init_repo(command)
    begin
      $repo = Grit::Repo.new $basedir unless command == 'help'
    rescue
      Dir.mkdir $basedir rescue nil
      `cd #{$basedir}; git init`
      $repo = Grit::Repo.new $basedir unless command == 'help'
    end
  end

  def put_help
    puts 'Usage: snippet <command> [arguments]', 'For help on commands, run `snippet help`.'
    exit 1
  end
end
