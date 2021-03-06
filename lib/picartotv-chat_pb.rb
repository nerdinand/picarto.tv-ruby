# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: picartotv-chat.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "NewMessage" do
    optional :message, :string, 1
  end
  add_message "UserList" do
    repeated :user, :message, 1, "UserList.User"
  end
  add_message "UserList.User" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    oneof :user_state do
      optional :user_data, :message, 3, "UserList.User.UserData"
      optional :ban_data, :message, 4, "UserList.User.BanData"
    end
  end
  add_message "UserList.User.UserData" do
    optional :registered, :bool, 1
    optional :moderator, :bool, 2
    optional :streamer, :bool, 3
    optional :ptv_admin, :bool, 4
    optional :basic, :bool, 5
    optional :premium, :bool, 6
    optional :subscriber, :bool, 7
    optional :color, :string, 8
    optional :ignoring, :bool, 9
  end
  add_message "UserList.User.BanData" do
    optional :is_shadow_ban, :bool, 1
  end
  add_message "ChatMessage" do
    optional :id, :uint32, 1
    optional :user_id, :uint32, 2
    optional :display_name, :string, 3
    optional :message, :string, 4
    optional :registered, :bool, 5
    optional :moderator, :bool, 6
    optional :streamer, :bool, 7
    optional :ptv_admin, :bool, 8
    optional :basic, :bool, 9
    optional :premium, :bool, 10
    optional :subscriber, :bool, 11
    optional :color, :string, 12
    optional :time_stamp, :int64, 13
    optional :is_me_message, :bool, 14
  end
  add_message "GlobalMessage" do
    optional :message, :string, 1
  end
  add_message "Whisper" do
    optional :id, :uint32, 1
    optional :user_id, :uint32, 2
    optional :display_name, :string, 3
    optional :message, :string, 4
    optional :incomming, :bool, 5
    optional :time_stamp, :int64, 6
  end
  add_message "ServerMessage" do
    optional :message, :string, 1
  end
  add_message "CommandHelp" do
    repeated :commands, :message, 1, "CommandHelp.Command"
  end
  add_message "CommandHelp.Command" do
    repeated :triggers, :string, 1
    optional :description, :string, 2
  end
  add_message "Control" do
    optional :message_type, :enum, 1, "Control.MessageType"
    optional :data_bool, :bool, 2
  end
  add_enum "Control.MessageType" do
    value :END_HISTORY, 0
    value :KICK, 1
    value :GAMING, 2
    value :ADULT, 3
    value :COMMISSIONS, 4
    value :UNUSED_COMMISSION_DESCRIPTION, 5
    value :UNUSED_DESCRIPTION, 6
    value :CONTENT_TYPE, 7
    value :CAN_TALK, 8
    value :SHOW_POLL_CREATOR, 9
    value :UNUSED_SHOW_RAFFLE_CREATOR, 10
    value :NAME_TAKEN, 11
    value :HIDE_POLL, 12
  end
  add_message "AdminControl" do
    optional :message_type, :enum, 1, "AdminControl.MessageType"
  end
  add_enum "AdminControl.MessageType" do
    value :ADULT, 0
    value :GAMING, 1
    value :MOVIE, 2
  end
  add_message "OnlineState" do
    optional :is_live, :bool, 1
    optional :viewers, :uint32, 2
    optional :channel, :uint32, 3
    optional :channel_name, :string, 4
  end
  add_message "Multistream" do
    optional :host, :message, 1, "Multistream.Channel"
    repeated :guests, :message, 2, "Multistream.Channel"
  end
  add_message "Multistream.Channel" do
    optional :channel, :uint32, 1
    optional :channel_name, :string, 2
  end
  add_message "Color" do
    optional :color, :string, 1
  end
  add_message "IgnoresUpdated" do
    repeated :ignores, :string, 1
  end
  add_message "ModifyIgnores" do
    optional :ignore_name, :string, 1
    optional :is_adding, :bool, 2
  end
  add_message "RemoveMessage" do
    optional :id, :uint32, 1
    optional :executioner_id, :uint32, 2
    optional :executioner_display_name, :string, 3
  end
  add_message "ClearUserMessages" do
    optional :username, :string, 1
    optional :executioner_id, :uint32, 2
    optional :executioner_display_name, :string, 3
  end
  add_message "ClearHistory" do
    optional :executioner_id, :uint32, 1
    optional :executioner_display_name, :string, 2
  end
  add_message "Kick" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    optional :executioner_id, :uint32, 3
    optional :executioner_display_name, :string, 4
  end
  add_message "Ban" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    optional :executioner_id, :uint32, 3
    optional :executioner_display_name, :string, 4
    optional :is_shadow_ban, :bool, 5
  end
  add_message "UnBan" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    optional :executioner_id, :uint32, 3
    optional :executioner_display_name, :string, 4
  end
  add_message "Mod" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    optional :is_now_mod, :bool, 3
  end
  add_message "ModList" do
    repeated :moderators, :message, 1, "ModList.Moderator"
  end
  add_message "ModList.Moderator" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
  end
  add_message "RaffleInit" do
    repeated :names, :string, 1
  end
  add_message "RaffleRun" do
    optional :winner, :string, 1
    repeated :names, :string, 2
    optional :host_id, :uint32, 3
    optional :host_display_name, :string, 4
  end
  add_message "PollInit" do
    optional :question, :string, 1
    repeated :options, :string, 2
    optional :host_id, :uint32, 3
    optional :host_display_name, :string, 4
  end
  add_message "PollUpdate" do
    repeated :votes, :int32, 1
    optional :host_id, :uint32, 2
    optional :host_display_name, :string, 3
  end
  add_message "PollResult" do
    optional :question, :string, 1
    repeated :winners, :string, 2
    optional :votes, :int32, 3
    optional :host_id, :uint32, 4
    optional :host_display_name, :string, 5
  end
  add_message "PollVote" do
    optional :option, :uint32, 1
  end
  add_message "PollVoteResponse" do
    optional :success, :bool, 1
  end
  add_message "SetName" do
    optional :name, :string, 1
  end
  add_message "NameConfirmation" do
    optional :response, :string, 1
  end
  add_message "ModTools" do
    optional :mod_tools_type, :enum, 1, "ModTools.ModToolsType"
  end
  add_enum "ModTools.ModToolsType" do
    value :NONE, 0
    value :MODERATOR, 1
    value :STREAMER, 2
    value :PTV_ADMIN, 3
  end
  add_message "PollEnd" do
  end
  add_message "Reminder" do
    optional :message, :string, 1
  end
  add_message "Timer" do
    optional :message, :string, 1
  end
  add_message "MonitorData" do
    optional :message_content, :bytes, 1
    optional :channel, :uint32, 2
    optional :channel_name, :string, 3
  end
  add_message "ChatLevel" do
    optional :chat_level, :enum, 1, "ChatLevel.ChatLevelType"
  end
  add_enum "ChatLevel.ChatLevelType" do
    value :EVERYONE, 0
    value :STREAMER, 1
    value :STREAMER_MODERATOR, 2
    value :STREAMER_MODERATOR_SUBSCRIBER, 3
    value :STREAMER_MODERATOR_FOLLOWER, 4
    value :STREAMER_MODERATOR_SUBSCRIBER_FOLLOWER, 5
    value :NO_GUEST, 6
  end
  add_message "RequestUserlist" do
  end
  add_message "UserInfo" do
    optional :user_id, :uint32, 1
    optional :display_name, :string, 2
    optional :registered, :bool, 3
    optional :moderator, :bool, 4
    optional :streamer, :bool, 5
    optional :ptv_admin, :bool, 6
    optional :basic, :bool, 7
    optional :premium, :bool, 8
    optional :subscriber, :bool, 9
    optional :color, :string, 10
    optional :ignoring, :bool, 11
    optional :banned, :bool, 12
    optional :shadow_banned, :bool, 13
  end
  add_message "UserCount" do
    optional :users, :uint32, 1
  end
  add_message "ShowRaffle" do
    repeated :user, :message, 1, "ShowRaffle.User"
  end
  add_message "ShowRaffle.User" do
    optional :display_name, :string, 1
    optional :subscriber, :bool, 2
  end
  add_message "Event" do
    optional :event_id, :string, 1
    optional :starting, :bool, 2
    optional :should_redirect, :bool, 3
  end
end

NewMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("NewMessage").msgclass
UserList = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserList").msgclass
UserList::User = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserList.User").msgclass
UserList::User::UserData = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserList.User.UserData").msgclass
UserList::User::BanData = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserList.User.BanData").msgclass
ChatMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("ChatMessage").msgclass
GlobalMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("GlobalMessage").msgclass
Whisper = Google::Protobuf::DescriptorPool.generated_pool.lookup("Whisper").msgclass
ServerMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("ServerMessage").msgclass
CommandHelp = Google::Protobuf::DescriptorPool.generated_pool.lookup("CommandHelp").msgclass
CommandHelp::Command = Google::Protobuf::DescriptorPool.generated_pool.lookup("CommandHelp.Command").msgclass
Control = Google::Protobuf::DescriptorPool.generated_pool.lookup("Control").msgclass
Control::MessageType = Google::Protobuf::DescriptorPool.generated_pool.lookup("Control.MessageType").enummodule
AdminControl = Google::Protobuf::DescriptorPool.generated_pool.lookup("AdminControl").msgclass
AdminControl::MessageType = Google::Protobuf::DescriptorPool.generated_pool.lookup("AdminControl.MessageType").enummodule
OnlineState = Google::Protobuf::DescriptorPool.generated_pool.lookup("OnlineState").msgclass
Multistream = Google::Protobuf::DescriptorPool.generated_pool.lookup("Multistream").msgclass
Multistream::Channel = Google::Protobuf::DescriptorPool.generated_pool.lookup("Multistream.Channel").msgclass
Color = Google::Protobuf::DescriptorPool.generated_pool.lookup("Color").msgclass
IgnoresUpdated = Google::Protobuf::DescriptorPool.generated_pool.lookup("IgnoresUpdated").msgclass
ModifyIgnores = Google::Protobuf::DescriptorPool.generated_pool.lookup("ModifyIgnores").msgclass
RemoveMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("RemoveMessage").msgclass
ClearUserMessages = Google::Protobuf::DescriptorPool.generated_pool.lookup("ClearUserMessages").msgclass
ClearHistory = Google::Protobuf::DescriptorPool.generated_pool.lookup("ClearHistory").msgclass
Kick = Google::Protobuf::DescriptorPool.generated_pool.lookup("Kick").msgclass
Ban = Google::Protobuf::DescriptorPool.generated_pool.lookup("Ban").msgclass
UnBan = Google::Protobuf::DescriptorPool.generated_pool.lookup("UnBan").msgclass
Mod = Google::Protobuf::DescriptorPool.generated_pool.lookup("Mod").msgclass
ModList = Google::Protobuf::DescriptorPool.generated_pool.lookup("ModList").msgclass
ModList::Moderator = Google::Protobuf::DescriptorPool.generated_pool.lookup("ModList.Moderator").msgclass
RaffleInit = Google::Protobuf::DescriptorPool.generated_pool.lookup("RaffleInit").msgclass
RaffleRun = Google::Protobuf::DescriptorPool.generated_pool.lookup("RaffleRun").msgclass
PollInit = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollInit").msgclass
PollUpdate = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollUpdate").msgclass
PollResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollResult").msgclass
PollVote = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollVote").msgclass
PollVoteResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollVoteResponse").msgclass
SetName = Google::Protobuf::DescriptorPool.generated_pool.lookup("SetName").msgclass
NameConfirmation = Google::Protobuf::DescriptorPool.generated_pool.lookup("NameConfirmation").msgclass
ModTools = Google::Protobuf::DescriptorPool.generated_pool.lookup("ModTools").msgclass
ModTools::ModToolsType = Google::Protobuf::DescriptorPool.generated_pool.lookup("ModTools.ModToolsType").enummodule
PollEnd = Google::Protobuf::DescriptorPool.generated_pool.lookup("PollEnd").msgclass
Reminder = Google::Protobuf::DescriptorPool.generated_pool.lookup("Reminder").msgclass
Timer = Google::Protobuf::DescriptorPool.generated_pool.lookup("Timer").msgclass
MonitorData = Google::Protobuf::DescriptorPool.generated_pool.lookup("MonitorData").msgclass
ChatLevel = Google::Protobuf::DescriptorPool.generated_pool.lookup("ChatLevel").msgclass
ChatLevel::ChatLevelType = Google::Protobuf::DescriptorPool.generated_pool.lookup("ChatLevel.ChatLevelType").enummodule
RequestUserlist = Google::Protobuf::DescriptorPool.generated_pool.lookup("RequestUserlist").msgclass
UserInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserInfo").msgclass
UserCount = Google::Protobuf::DescriptorPool.generated_pool.lookup("UserCount").msgclass
ShowRaffle = Google::Protobuf::DescriptorPool.generated_pool.lookup("ShowRaffle").msgclass
ShowRaffle::User = Google::Protobuf::DescriptorPool.generated_pool.lookup("ShowRaffle.User").msgclass
Event = Google::Protobuf::DescriptorPool.generated_pool.lookup("Event").msgclass
