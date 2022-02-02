# Turbo training

## Setup

`rails new turbo_training  --skip-action-mailbox --database postgresql`

`rails g scaffold Tweet body:text`

`rails db:create db:migrate`

bundle & yarn

## Let's Turbo it!

 - 1 setup the broadcast in the model
 - 2 wrap your DOM element in a turbo-frame
 - 3 create the link between front and back with a turbo_stream_from
 - 4 in command Tweet.create body: "Hello World" and TADAAAA

Broadcast with update / delete needs to target a specific tweet
 - 1 wrap _tweet.html.erb with a turbo_frame_tag
 - 2 with the tag include the id of the tweet
 - 3 in command update /delete a tweet Tweet.last.destroy or Tweet.last.update(body: "updated live") and TADAAAA

