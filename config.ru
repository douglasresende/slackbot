$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'dotenv'
Dotenv.load
require 'cilia-bot'
require 'web'
Thread.abort_on_exception = true
Thread.new do
  begin
    CiliaBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end
run CiliaBot::Web
