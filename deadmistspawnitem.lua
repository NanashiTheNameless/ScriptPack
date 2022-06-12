local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text
local daplayer = game.Players.LocalPlayer.Name

local new = game.Workspace.Items[dmtypee]:Clone()
new.Parent = workspace
new:MoveTo(workspace[daplayer].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))