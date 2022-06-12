player = game.Players.xSoulStealerx
char = player.Character
if script.Parent.className == "HopperBin" then return end
tool = Instance.new("HopperBin")
script.Parent = char
tool.Parent = player.Backpack
tool.Name = "Flamethrowa"
wr = char.Torso["Right Shoulder"].C1
handle = Instance.new("Part")
handle.Parent = game.Lighting
handle.Name = "Handle"
handle.Size = Vector3.new(1,4,1)
handle.TopSurface = 0
handle.BottomSurface = 0
handle.BrickColor = BrickColor.new("Black")
handle.Anchored = false
handle.Position = char["Right Arm"].Position
handle.CanCollide = false
weld = Instance.new("Weld")
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = handle
weld.C1 = CFrame.new(-0.5, 0, 0)
weld2 = char.Torso["Right Shoulder"]
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,-1.6) * CFrame.new(-0.5,0,-0.4)
click = false

tool.Selected:connect(function(mouse)
click = false
handle.Parent = char
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,-1.6) * CFrame.new(-0.5,0,-0.4)
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = handle
weld.C1 = CFrame.new(-0.5, 0, 0)

mouse.Button1Down:connect(function() 
click = true 
while click == true do 
wall = Instance.new("Part") 
wall.Parent = workspace 
wall.Size = Vector3.new(4, 4, 4) 
wall.Locked = true 
wall.Position = Vector3.new(0, 40, 0)
wall.Anchored = false 
wait(0.1) 
end 
end) 
mouse.Button1Up:connect(function() 
click = false 
end) 
end)


function unEquipped()
handle.Parent = game.Lighting
weld2.C1 = wr
click = false
end

tool.Deselected:connect(unEquipped)



