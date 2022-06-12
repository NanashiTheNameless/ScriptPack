local Pos = workspace.xSoulStealerx.Torso.Position
local Dir = workspace.DoogleFox.Torso.Position
local hit = workspace:findPartOnRay(Ray.new(Pos, (Dir - Pos).unit * 999))
Instance.new("Message",workspace).Text = tostring(hit)..",  Parent: "..tostring(hit.Parent)
