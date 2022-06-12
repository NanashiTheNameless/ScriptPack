if script.Parent.className ~= "HopperBin" then 
player = game.Players.xSoulStealerx 
char = player.Character 
tool = Instance.new("HopperBin") 
tool.Parent = player.Backpack 
tool.Name = "Wand of Wisdom" 
script.Parent = tool 
end 

bin = script.Parent 

player = game.Players.xSoulStealerx
char = player.Character

ice = "Light blue"
fire = "Bright red"
land = "Earth green"

handle = Instance.new("Part") 
handle.Parent = game.Lighting 
handle.Name = "Handle" 
handle.FormFactor = "Symmetric" 
handle.Size = Vector3.new(1,4,1) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.BrickColor = BrickColor.new("Black") 
handle.Anchored = false 
handle.Position = char["Right Arm"].Position 
handle2 = Instance.new("Part") 
handle2.Parent = game.Lighting 
handle2.Name = "Handle2" 
handle2.Shape = "Ball"
handle2.Size = Vector3.new(1,1,1) 
handle2.TopSurface = 0 
handle2.BottomSurface = 0 
handle2.BrickColor = BrickColor.new("Bright red") 
handle2.Anchored = false 
handle2.Position = char["Right Arm"].Position 
icef = Instance.new("Fire")
icef.Parent = handle2
icef.Heat = 5
icef.Size = 2
icef.Color = Color3.new(0,0,1)
icef.SecondaryColor = Color3.new(0,0,1)
icef.Enabled = false
firef = Instance.new("Fire")
firef.Parent = handle2
firef.Heat = 5
firef.Size = 2
firef.Color = Color3.new(1,0,0)
firef.SecondaryColor = Color3.new(1,0,0)
firef.Enabled = true
landf = Instance.new("Fire")
landf.Parent = handle2
landf.Heat = 5
landf.Size = 2
landf.Color = Color3.new(0,1,0)
landf.SecondaryColor = Color3.new(0,1,0)
landf.Enabled = false

handle3 = Instance.new("Part") 
handle3.Parent = game.Lighting 
handle3.Name = "Handle2" 
handle3.Shape = "Ball"
handle3.Size = Vector3.new(1,1,1) 
handle3.TopSurface = 0 
handle3.BottomSurface = 0 
handle3.BrickColor = BrickColor.new("Black") 
handle3.Anchored = false 
handle3.Position = char["Right Arm"].Position 
local m = Instance.new("CylinderMesh") 
m.Parent = handle 
m.Scale = Vector3.new(0.42,1,0.42) 
local m2 = Instance.new("SpecialMesh") 
m2.Parent = handle2 
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(0.8,0.8,0.8) 
local m3 = Instance.new("SpecialMesh") 
m3.Parent = handle3 
m3.MeshType = "FileMesh"
m3.MeshId = "http://www.roblox.com/asset/?id=1033714"
m3.Scale = Vector3.new(0.4,0.85,0.4) 
brick1 = Instance.new("Part")
brick1.Parent = char
brick1.formFactor = "Symmetric"
brick1.Size = Vector3.new(1,1,1)
brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick1.Shape = "Ball"
brick1.CanCollide = false
brick1.Transparency = 1
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = brick1
mesh1.MeshType = "Sphere"
mesh1.Scale = Vector3.new(1.4,1.4,1.4)
wads = Instance.new("Weld")
wads.Parent = char.Torso
wads.Part0 = wads.Parent
wads.Part1 = brick1
wads.C1 = CFrame.new(-1.5,-0.5,0)

wa = Instance.new("Weld")
wa.Parent = brick1
wa.Part0 = nil
wa.Part1 = nil

function keydown(key)
	key = key:lower()
	if (key == "k") then
		char:breakJoints()
	end
end

function select(mouse, key)
	mouse.KeyDown:connect(keydown)
	handle.Parent = char 
	handle2.Parent = char
	handle3.Parent = char
	weld = Instance.new("Weld") 
	weld.Parent = char["Right Arm"] 
	weld.Part0 = weld.Parent 
	weld.Part1 = handle 
	weld.C1 = CFrame.new(0, 0, 0) 
	weld2 = Instance.new("Weld") 
	weld2.Parent = handle 
	weld2.Part0 = weld2.Parent 
	weld2.Part1 = handle2 
	weld2.C1 = CFrame.new(0, 0, 2.1) 
	weld3 = Instance.new("Weld") 
	weld3.Parent = handle 
	weld3.Part0 = weld3.Parent 
	weld3.Part1 = handle3 
	weld3.C1 = CFrame.new(0, 0, 1.4) 
	weld.C1 = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 1.1, 0.5) 
	weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, -2.1, 0) 
	weld3.C1 = CFrame.fromEulerAnglesXYZ(3.2,0,0) * CFrame.new(0, -1.5, 0) 
	wa.Part0 = wa.Parent
	wa.Part1 = char["Right Arm"]
	wa.C1 = CFrame.fromEulerAnglesXYZ(-1.55,0,0) * CFrame.new(0,0,0.6)
end 

function deselect() 
	handle.Parent = game.Lighting 
	handle2.Parent = game.Lighting
	handle3.Parent = game.Lighting
	wa.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0)
	wait(0.01)
	wa.Part0 = nil
	wa.Part1 = nil
end 


script.Parent.Selected:connect(select) 
script.Parent.Deselected:connect(deselect) 

