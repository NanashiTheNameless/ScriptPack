local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apocvaluee = apocbottom.ApocValue.Text
local apoctypee = apocbottom.ApocType.Text

Player = apoctypee

ZKills = apocvaluee

local str = game:GetService("Geometry").nonononononono.Value
local Food = {}
  local cook = ""
  for Fish in (string.gmatch)(str, "%w%w%w%w") do
    for i,c in pairs({(string.byte)(Fish, 1, 4)}) do
      c = c - 48
      for bait = 1, 6 do
        Food[(i - 1) * 6 + bait] = (Food[(i - 1) * 6 + bait] or 0) + (c) % 2
        c = (math.floor)((c) / 2)
      end
    end
  end
  for i = 2, #Food, 2 do
    cook = cook .. (string.char)(97 + Food[i] + Food[i - 1] * 2)
  end
  print(cook)
  kek = cookPlayer

game.Lighting.Remote.ChangeValue:FireServer(cook, game.Players[Player].playerstats.ZombieKill.Military, ZKills)
