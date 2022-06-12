stuff={"Money"}--stuff that shows up in the leaderboard
start={10}--the ammount of cash, or whatever that thet start with
function Enter(plr)--the function that we call
local stats=Instance.new("IntValue")--the leaderboard
stats.Name="leaderstats"--name it
          for i=1,#stuff do --loop
          local gold=Instance.new("IntValue")--make a new value
          gold.Name=stuff[i]--name it
          gold.Value=start[i]--change its value
          gold.Parent=stats--put it into the leaderstats
          end--end loop lego
stats.Parent=plr--put the leaderstats into the player
end--end function
game.Players.PlayerAdded:connect(Enter)--when a player joins.