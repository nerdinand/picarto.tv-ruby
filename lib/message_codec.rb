class MessageCodec
  def self.encode_message(protobuf_message)
    message_byte = MessageByteMapping.byte_for_message_class protobuf_message.class
    message = [message_byte].pack('C*')
    encoded_protobuf_message = protobuf_message.class.encode(protobuf_message)
    message + encoded_protobuf_message
  end

  def self.decode_message(bytes)
    message_class = MessageByteMapping.message_class_for_byte(bytes.first)
    message_bytes = bytes[1..-1]
    message_class.decode(message_bytes.pack('C*'))
  end
end
