local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

local localname = game.Players.LocalPlayer.Name
local found = workspace:FindFirstChild(apoctypee, true)
if found then
    found:MoveTo(workspace[localname].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end