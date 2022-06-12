local p = game.Players.LocalPlayer
local Mpc = p.Character
local mouse = p:GetMouse()
visible=false
function fgeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f)
local funcw = Instance.new("Weld")
funcw.Name = zName
funcw.Parent = zParent
funcw.Part0 = zPart0
funcw.Part1 = zPart1
if (zCoco == true) then
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
else
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f)
end
return funcw
end
------------------- 
size = 3
 t2 = game.Players.LocalPlayer.Character.Torso
pcall(function() game.Players.LocalPlayer.Character.Torso["Something Beautiful"]:Remove() end)
 mdl = Instance.new("Model",t2)
 mdl.Name = ("Something Beautiful")
 local bl = Instance.new("Part")
 bl.TopSurface = 0
 bl.BottomSurface = 0
 bl.CanCollide = false
 bl.BrickColor = Mpc.Torso.BrickColor
 bl.Shape = "Ball"
 bl.Parent = mdl
 bl.Size = Vector3.new(1,1,1)
 local dm = Instance.new("SpecialMesh")
 dm.MeshType = "Sphere"
 dm.Parent = bl
 dm.Scale = Vector3.new(1.2,1.2,1.2)
 fgeld("weld",mdl,t2,bl,true,-0.5,0.5,-0.6,0,0,0)
 local br = Instance.new("Part")
 br.TopSurface = 0
 br.BottomSurface = 0
 br.CanCollide = false
 br.BrickColor = Mpc.Torso.BrickColor
 br.Shape = "Ball"
 br.Parent = mdl
 br.Size = Vector3.new(1,1,1)
 local dm = Instance.new("SpecialMesh")
 dm.MeshType = "Sphere"
 dm.Parent = br
 dm.Scale = Vector3.new(1.2,1.2,1.2)
 fgeld("weld",mdl,t2,br,true,0.5,0.5,-0.6,0,0,0)
 local bln = Instance.new("Part")
 bln.BrickColor = BrickColor.new("Pink")
 bln.TopSurface = 0
 bln.BottomSurface = 0
 bln.CanCollide = false
 bln.Shape = "Ball"
 bln.Parent = mdl
 bln.Size = Vector3.new(1,1,1)
 local dm = Instance.new("SpecialMesh")
 dm.MeshType = "Sphere"
 dm.Parent = bln
 dm.Scale = Vector3.new(0.2,0.2,0.2)
 fgeld("weld",mdl,t2,bln,true,-0.5,0.5,-1.2,0,0,0)
 local brn = Instance.new("Part")
 brn.BrickColor = BrickColor.new("Pink")
 brn.TopSurface = 0
 brn.BottomSurface = 0
 brn.CanCollide = false
 brn.Shape = "Ball"
 brn.Parent = mdl
 brn.Size = Vector3.new(1,1,1)
 local dm = Instance.new("SpecialMesh")
 dm.MeshType = "Sphere"
 dm.Parent = brn
 dm.Scale = Vector3.new(0.2,0.2,0.2)
 fgeld("weld",mdl,t2,brn,true,0.5,0.5,-1.2,0,0,0) 

for i,v in pairs(mdl:children()) do
    if v:IsA("Part") then
        v.Transparency=0
    end
end
end

mouse.KeyDown:connect(function(key)
    if key == "n" and visible==true then
for i,v in pairs(mdl:children()) do
    if v:IsA("Part") then
        v.Transparency=1
    end
end
end
visible=false
end)
mouse.KeyDown:connect(function(key)
if key == "n" and visible==false then
for i,v in pairs(mdl:children()) do
    if v:IsA("Part") then
        v.Transparency=0
    end
end
end
visible=true
end)

local V = Instance.new("Part", Mpc)
V.Size = Vector3.new(0.5,1,0.25)
V.BrickColor = Mpc.Torso.BrickColor
Instance.new("SpecialMesh",V).MeshType = "Sphere"
local VW = Instance.new("Weld", V)
VW.Part0 = Mpc.Torso
VW.Part1 = V
VW.C0 = CFrame.new(0,-1,-0.5)
local GH = Instance.new("Part", V)
GH.Size = Vector3.new(0.25,0.5,0.25)
GH.BrickColor = BrickColor.new("Pink")
Instance.new("SpecialMesh",GH).MeshType = "Sphere"
local GHW = Instance.new("Weld", GH)
GHW.Part0 = V
GHW.Part1 = GH
GHW.C0 = CFrame.new(0, 0,-0.1)
local V = Instance.new("Part", Mpc)
V.Size = Vector3.new(0.5,1,0.25)
V.BrickColor = Mpc.Torso.BrickColor
Instance.new("SpecialMesh",V).MeshType = "Sphere"
local VW = Instance.new("Weld", V)
VW.Part0 = Mpc.Torso
VW.Part1 = V
VW.C0 = CFrame.new(0,-1,-0.5)
local GH = Instance.new("Part", V)
GH.Size = Vector3.new(0.25,0.5,0.25)
GH.BrickColor = BrickColor.new("Pink")
Instance.new("SpecialMesh",GH).MeshType = "Sphere"
local GHW = Instance.new("Weld", GH)
GHW.Part0 = V
GHW.Part1 = GH
GHW.C0 = CFrame.new(0, 0,-0.1)