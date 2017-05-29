# picarto.tv-ruby

An attempt at writing a bot for picarto.tv.

Run `bin/setup.sh` to set up dependencies (OS X only).

Run bot:

```
PICARTO_BOT_CHANNEL_ID=<channel_id> PICARTO_BOT_BEARER_TOKEN=<bearer_token> ruby test.rb
```

`channel_id` is the id of the picarto.tv channel to connect to.

`bearer_token` is the bearer token of your bot user. Can be obtained on https://oauth.picarto.tv/ (called "Persistent Access Token" in the UI).
