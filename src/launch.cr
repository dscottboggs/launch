# TODO: Write documentation for `Launch`
module Launch
  class_property commands = [] of Array(String)

  extend self

  def parse(args = ARGV)
    command = [] of String
    while arg = args.shift?
      comma = false
      # Ending a word in a comma means you want to execute the preceding
      # command as-is, and add another command to the list of commands you
      # wish to launch.
      if arg.ends_with? ','
        comma = true
        arg = arg.rchop ','
      end
      command << arg
      if comma
        commands << command
        command = [] of String
      end
    end
    commands << command
    self
  end

  def execute
    processes = [] of Process
    commands.each do |command|
      proc = Process.new command[0],
        args: command[1..],
        output: Process::Redirect::Pipe,
        error: Process::Redirect::Pipe
      puts "#{command.join ' '}: #{proc.pid}"
      processes << proc
    end
    processes.each_with_index do |proc, index|
      if proc.terminated?
        status = proc.wait
      end
    end
    self
  end
end
