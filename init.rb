# Add workflow directory to ruby path
$: << File.join(File.dirname(__FILE__))

# Add workflow gem repository to gem path
ENV['GEM_PATH'] = File.join(Dir.pwd, 'ruby-1.8')

# Provide a facility to log messages to Console.app:
def console_log(msg)
  escape = proc{ |m| m.gsub("'", "'\\\\''") }
  `logger -t 'Alfred Workflow' '#{escape[msg]}'`
end
# Yay! A way to debug Alfred scripts. You can use either method:
#   raise "I need to explain how this happened…"
#                   OR
#   Alfred.log "parachutes away!"
#
# Note: to see the messages, open up Console.app. If there is a backtrace,
# you'll need to press the little "right arrow" next to the log line.

# Load and evaluate a Ruby file in the current bundle's directory
def load_ruby_file(filename)
  ruby_code = IO.read(filename)
  eval(ruby_code, binding, File.expand_path(filename))
end
