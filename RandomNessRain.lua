--[[RandomNess Rain by epico, put ur name where it says "masterepico" leave the "s]]--
name="masterepico"
nm=game.Workspace:FindFirstChild(name)
--[[Shortcuts]]--
--[[RandomNess Rain]]--
RandomNessRain=Instance.new("Model",nm)
RandomNessRain.Name="RandomNessRain"
while true do
wait()
z=Instance.new("Part",nm.RandomNessRain)
z.Size=Vector3.new(2,2,2)
z.Transparency=0
z.Reflectance=0
z.BrickColor=BrickColor.Random()
z.CFrame=nm.Torso.CFrame*CFrame.new(0,10,0)
z.Anchored=false
zb=Instance.new("SelectionBox",z)
zb.Adornee=z
zb.Color=BrickColor.Random()
zb.Transparency=0
end