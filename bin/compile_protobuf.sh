#!/usr/bin/env bash

curl https://docs.picarto.tv/chat/chat.proto > ./definitions/picartotv-chat.proto
protoc -I ./definitions --ruby_out ./lib ./definitions/picartotv-chat.proto
