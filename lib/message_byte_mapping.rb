class MessageByteMapping
  MAPPING = {
    AdminControl        => 0,
    Ban                 => 1,
    ChatMessage         => 2,
    ClearHistory        => 3,
    ClearUserMessages   => 4,
    Color               => 5,
    CommandHelp         => 6,
    Control             => 7,
    GlobalMessage       => 8,
    IgnoresUpdated      => 9,
    Kick                => 10,
    Mod                 => 11,
    ModList             => 12,
    ModifyIgnores       => 13,
    Multistream         => 14,
    NewMessage          => 15,
    OnlineState         => 16,
    PollInit            => 17,
    PollResult          => 18,
    PollUpdate          => 19,
    PollVote            => 20,
    PollVoteResponse    => 21,
    RaffleInit          => 22,
    RaffleRun           => 23,
    RemoveMessage       => 24,
    ServerMessage       => 25,
    UnBan               => 26,
    UserList            => 27,
    Whisper             => 28,
    SetName             => 29,
    NameConfirmation    => 30,
    ModTools            => 31,
    PollEnd             => 32,
    Reminder            => 33,
    Timer               => 34,
    MonitorData         => 35,
    ChatLevel           => 36,
    RequestUserlist     => 37,
    UserInfo            => 38,
    UserCount           => 39,
    ShowRaffle          => 40,
    Event               => 41
  }

  def self.byte_for_message_class(message_class)
    MAPPING[message_class]
  end

  def self.message_class_for_byte(byte)
    message_class = MAPPING.key(byte)

    if message_class.nil?
      raise "#{byte} is an invalid message class byte."
    end

    message_class
  end
end
