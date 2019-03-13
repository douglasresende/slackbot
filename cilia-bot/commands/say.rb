module CiliaBot
  module Commands
    class Say < SlackRubyBot::Commands::Base
      command 'say' do |client, data, match|
        client.say(channel: data.channel, text: match['expression'])
      end
    end
  end
end
