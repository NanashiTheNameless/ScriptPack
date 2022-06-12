:ls --I've heard that only you can see it. Oh well.

local char = game.Players.LocalPlayer.Character
local cam = Workspace.CurrentCamera
while wait(0.1) do
local snow = Instance.new("Part",cam)
snow.Shape = "Ball"
snow.CanCollide = false
snow.BrickColor = BrickColor.new("Institutional white")
snow.Size = Vector3.new(1,1,1)
snow.CFrame = char.Torso.CFrame + Vector3.new(math.random(-25,25), -5 ,math.random(-25,25))
game:GetService("Debris"):AddItem(snow,5)

local float = Instance.new("BodyForce",snow)
float.force = Vector3.new(0,500,0)

end