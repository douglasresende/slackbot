module CiliaBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Bot Jaum'
      desc '"Ó o gás"'

      command 'say <message>' do
        desc 'Tells you the <message>.'
      end
    end
  end
end
