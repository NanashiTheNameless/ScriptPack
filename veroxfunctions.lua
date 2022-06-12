return function(msg)
     wait()
   local post = game.HttpService:PostAsync('https://sb-scripts.slack.com/services/hooks/slackbot?token=LgvzZbwa5P2tIPUzTibrtRHn&channel=%23sbmessage',msg)
 if post then
        print'Sent to Slack servers.'
         end
    end