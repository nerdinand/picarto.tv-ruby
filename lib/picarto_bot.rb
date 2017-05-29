require 'bundler/setup'

require 'pry-byebug'

require 'uri'
require 'net/http'
require 'websocket-client-simple'

require_relative 'picartotv-chat_pb.rb'
require_relative 'message_byte_mapping.rb'
require_relative 'message_codec.rb'

class PicartoBot
  PICARTO_JWT_KEY_ENDPOINT_URI = URI('https://api.picarto.tv/v1/user/jwtkey')
  PICARTO_CHAT_ENDPOINT_URI = URI('https://nd2.picarto.tv/socket?token=jwt.token.here')

  def initialize(channel_id, bearer_token)
    @channel_id   = channel_id
    @bearer_token = bearer_token
  end

  def authorize!
    endpoint_uri = PICARTO_JWT_KEY_ENDPOINT_URI.dup
    endpoint_uri.query= "channel_id=#{@channel_id}&bot=true"

    request = Net::HTTP::Get.new(endpoint_uri)
    request['Authorization'] = "Bearer #{@bearer_token}"

    response = Net::HTTP.start(endpoint_uri.hostname, endpoint_uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    if response.is_a?(Net::HTTPSuccess)
      @jwt_key = response.body
    else
      raise response.body
    end
  end

  def connect!
    endpoint_uri = PICARTO_CHAT_ENDPOINT_URI.dup
    endpoint_uri.query = "token=#{@jwt_key}"

    @websocket = WebSocket::Client::Simple.connect endpoint_uri.to_s

    @websocket.on :message do |msg|
      puts MessageCodec.decode_message(msg.data.unpack('C*')).inspect
    end

    @websocket.on :close do |e|
      p e
      exit 1
    end

    @websocket.on :error do |e|
      p e
    end
  end

  def wait
    loop do
      message_text = STDIN.gets.strip
      encoded_message = MessageCodec.encode_message(NewMessage.new(message: message_text))
      @websocket.send_data encoded_message
    end
  end
end
