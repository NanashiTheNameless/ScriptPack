if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = game.Players.lordsheen.Backpack 
Tool.Name = "Generate" 
script.Parent = Tool 
end 
mode = true
width = 50
height = 50

function onButton1Down(mouse)
print(mode)
Hit = mouse.hit
if Hit==nil then return end

if mode == true then
posx = mouse.hit.p.x
posy = mouse.hit.p.y
posz = mouse.hit.p.z
else
posx2 = mouse.hit.p.x
posy2 = mouse.hit.p.y
posz2 = mouse.hit.p.z
p = Instance.new("Part")
p.BrickColor = BrickColor.new("Dark stone grey")
p.Material = Enum.Material.Slate
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "MountainPart"
p.formFactor = 3
p.Anchored = true
p.Parent = game.Workspace
p.Size = Vector3.new(width,height,(Vector3.new(posx,posy,posz) - mouse.hit.p).magnitude)
p.CFrame = CFrame.new(Vector3.new((posx+posx2)/2,(posy+posy2)/2,(posz+posz2)/2))

p.CFrame = CFrame.new(p.Position, mouse.hit.p)
end

mode = not mode
end

function onS(mouse)
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
script.Parent.Selected:connect(onS)

