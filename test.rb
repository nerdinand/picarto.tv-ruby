require_relative 'lib/picarto_bot.rb'

channel_id = ENV['PICARTO_BOT_CHANNEL_ID']
bearer_token = ENV['PICARTO_BOT_BEARER_TOKEN']

picarto_bot = PicartoBot.new(channel_id, bearer_token)
picarto_bot.authorize!
picarto_bot.connect!
picarto_bot.wait
