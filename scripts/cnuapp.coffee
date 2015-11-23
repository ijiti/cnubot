# Description:
#   Cnuapp just don't understand.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot tests - check on test suite status
#   hubot restart - restart hubot
#   hubot cluster - check which cluster hubot is on
#   hubot apply-patch <patch> - apply patch to hubot

module.exports = (robot) ->

  robot.respond /tests?$/i, (msg) ->
    responses = [
      "Pass! No, fail!",
      "Fail! No, pass!",
      "Fails on Saturdays and Labor Day.",
      "All green.",
      "Current time: 12:30:00 14 June 2124",
      "Cannot connect to cnubot.qa: certificate expired",
      "I'll let you know tomorrow."
    ]
    msg.send msg.random responses

  robot.respond /net ?credit/i, (msg) ->
    msg.send "Yeah, like that's ever going to work."

  robot.respond /restart/, (msg) ->
    msg.send "Permission denied. Try sudo."

  robot.respond /sudo restart/, (msg) ->
    msg.send "Stop escalating privileges. This incident has been reported."

  robot.respond /cluster$/, (msg) ->
    responses = [
      "GB",
      "US",
      "JV",
      "CA",
      "AUAAHAHAHAHAHAHAHAA",
      "AUAAHAHAHAHAHAHAHAA"
    ]
    msg.send msg.random responses

  robot.respond /apply[-_]patch (.*)$/, (msg) ->
    msg.send "Could not load db-global."

  robot.hear /hubot image me tiny pig/, (msg) ->
    msg.send "This part's my favorite!"

  robot.hear /metrix run/i, (msg) ->
    msg.emote "/me chuckles softly in the corner"

  robot.hear /^cnubot\.([a-zA-Z0-9_?!]+)/, (msg) ->
    msg.send "NoMethodError: undefined method `" + msg.match[1] + "' for nil:NilClass"

  robot.hear /^cnubot && cnubot\.([a-zA-Z0-9_?!]+)/, (msg) ->
    msg.send "NoMethodError: undefined method `" + msg.match[1] + "' for #<Cabar::CnuBot:0xfea124eb>"

