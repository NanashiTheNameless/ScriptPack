local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apocvaluee = apocbottom.ApocValue.Text

local str = game:GetService("Geometry").nonononononono.Value  
local Food = {}
  local Cook = ""
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
    Cook = Cook .. (string.char)(97 + Food[i] + Food[i - 1] * 2)
  end
  print(Cook)
kek = Cook
game.Lighting.Remote.CreateSounds:InvokeServer()
wait(2)
game.Lighting.Remote.ChangeParent:FireServer(kek,game.Players.LocalPlayer.Character.Head.Sound, game.Workspace)
wait(2)
game.Lighting.Remote.SoundIdSet:FireServer(kek,game.Workspace.Sound, "http://www.roblox.com/asset/?id="..tostring(apocvaluee))
wait(2)
game.Lighting.Remote.PlaySound:FireServer(game.Workspace.Sound, 1, 1)
wait(120) 
game.Lighting.Remote.StopSound:FireServer(game.Workspace.Sound)