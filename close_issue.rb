require 'httparty'
require 'pry'
require './token'

body = {
  state: "closed"
      }.to_json

body2 = {
  body: File.read(__FILE__)
      }.to_json

close_3 = HTTParty.patch(
          "https://api.github.com/repos/tiyd-ror-2016-06/class-notes/issues/3",
          headers: {
            "Authorization" => "token #{Token}",
            "User-Agent" => "goggle cromagnus"
            },
          body: body
          )






comment_3 = HTTParty.post(
            "https://api.github.com/repos/tiyd-ror-2016-06/class-notes/issues/3/comments",
            headers: {
              "Authorization" => "token #{Token}",
              "User-Agent" => "goggle cromagnus"
              },
            body: body2
            )



binding.pry
