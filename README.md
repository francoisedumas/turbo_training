# Turbo training

## Setup

`rails new turbo_training  --skip-action-mailbox --database postgresql`

`rails g scaffold Tweet body:text`

`rails db:create db:migrate`

bundle & yarn

## Let's Turbo it!

 - 1/ setup the broadcast in the model
 - 2/ wrap your DOM element in a turbo_frame_tag
 - 3/ create the link between front and back with a turbo_stream_from
 - 4/ in a terminal command line Tweet.create body: "Hello World" and TADAAAA

Broadcast with update / delete needs to target a specific tweet
 - 1/ wrap _tweet.html.erb with a turbo_frame_tag
 - 2/ with the tag include the id of the tweet
 - 3/ in a terminal command line update /delete a tweet Tweet.last.destroy or Tweet.last.update(body: "updated live") and TADAAAA

## Working with forms

We have a validation tweet body can't be emply. We want to have just the form updated with warning when we submit empty tweet.
 - 1/ wrap your form in a turbo_frame_tag
 - 2/ update create action with a ormat.turbo_stream telling the controller to replace by a frame when there is an error
 - 3/ link it with the form template by adding an id "new_tweet"
  - a/ looking at the network thanks to ajax request it replaces the form by a new one `<turbo-stream action="replace" target="new_tweet"><template><form id="new_tweet"... />`

## Adding incremental counter button

 - 1/ Within the "tweet frame" you can add button link to dedicated routes and controller.
