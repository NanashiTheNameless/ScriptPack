local player=game:service'Players'.LocalPlayer
local char=player.Character
local mouse=player:GetMouse()
local tor = char.Torso
local ra = char['Right Arm']
local la = char['Left Arm']
local attacking = false
function weld(p0,p1,c0)
        local w=Instance.new("Weld",p0)
        w.Part0=p0
        w.Part1=p1
        w.C0=c0
        return w
end

---Clothing------------------------------------------------------
if char:findFirstChild("Shirt") then
	char.Shirt:Remove()
end

if char:findFirstChild("Pants") then
	char.Pants:Remove()
end

if char:findFirstChild("Shirt Graphic") then
	char["Shirt Graphic"]:Remove()
end

if char.Torso:findFirstChild("roblox") then
	char.Torso.roblox:Remove()
end

 local Shirt = Instance.new("Shirt",char)
 local Pants = Instance.new("Pants",char)
 Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=188809505"
 Pants.PantsTemplate = "http://www.roblox.com/asset/?id=158093557"
if char:FindFirstChild("Head") then char.Head.BrickColor = BrickColor.new("Sand red") end
if char:FindFirstChild("Torso") then char.Torso.BrickColor = BrickColor.new("Sand red") end
if char:FindFirstChild("Left Leg") then char["Left Leg"].BrickColor = BrickColor.new("Sand red") end
if char:FindFirstChild("Right Leg") then char["Right Leg"].BrickColor = BrickColor.new("Sand red") end
if char:FindFirstChild("Left Arm") then char["Left Arm"].BrickColor = BrickColor.new("Sand red") end
if char:FindFirstChild("Right Arm") then char["Right Arm"].BrickColor = BrickColor.new("Sand red") end
-----------------------------------------------------------------
--Health&Walkspeed--
char.Humanoid.MaxHealth = 1000
char.Humanoid.Health = 1000
char.Humanoid.WalkSpeed = 10
----------
--Body
local torso = char.Torso:Clone()
torso.Size = Vector3.new(char.Torso.Size.x,char.Torso.Size.y,char.Torso.Size.z)
torso.Transparency = 0
torso.CanCollide = false
if torso:FindFirstChild("roblox") then torso.roblox:Remove() end
torso.Parent = char
torso.CanCollide = true
torso.Name = "Torso"
torso["Left Shoulder"]:Destroy()
torso["Right Shoulder"]:Destroy()
torso["Left Hip"]:Destroy()
torso["Right Hip"]:Destroy()
char.Torso.Transparency = 1
char.Torso.Name = "Torso2"


local tweld = Instance.new("Weld",char.Torso)
tweld.Name = "tweld"
tweld.Part0 = char.Torso
tweld.Part1 = char.Torso2
tweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(15),0,0)
char.Torso2.Name = "Torso"
-----
---Hair------------------------------------------------------------------------------
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Accessory" then v:remove() end end

hair = Instance.new("Part", char.Head)
hair.FormFactor = Enum.FormFactor.Plate
hair.CanCollide = false
hair.TopSurface = Enum.SurfaceType.Smooth
hair.Size = Vector3.new(1, 0.8, 1)
hair.Name = "Hair"
hair.Friction = 0.3
hair.BottomSurface = Enum.SurfaceType.Smooth
hair:BreakJoints()
mesh = Instance.new("SpecialMesh", hair)
mesh.Scale = Vector3.new(1.02, 1.05, 1.05)
mesh.MeshId = "http://www.roblox.com/asset/?id=12259089"
mesh.TextureId = "http://www.roblox.com/asset/?id=208214380"
mesh.MeshType = Enum.MeshType.FileMesh

local hatweld = Instance.new("Weld",hair)
hatweld.Name = "Hatweld"
hatweld.Part0 = hair
hatweld.Part1 = char.Head
hatweld.C0 = CFrame.new(0,-.4,0)
char.Head.face.Texture = "http://www.roblox.com/asset/?id=133667125"
hair:MakeJoints()
-------------------------------------------------------------------------------------------
---Music---------------------------------------------------------------------------------------------------
local music=Instance.new("Sound")
music.SoundId="http://www.roblox.com/asset/?id=225920256"
music.PlayOnRemove=false
music.Volume=.8
music.Looped=true
music.Pitch = 1
music.Parent=char.Head
music.Name = "ScissormanTheme"
music:Play()

char.Humanoid.Died:connect(function(musicremoval)
	music:Stop()
	wait()
	music:Destroy()
end)
-----------------------------------------------------------------------------------------------------------

--Model Build--
local scissors = Instance.new("Model", char)
scissors.Name = "Scissors"

local blade2 = Instance.new("Model", scissors)
blade2.Name = "Blade2"

blade = Instance.new("Part", blade2)
blade.FormFactor = Enum.FormFactor.Custom
blade.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
blade.TopSurface = Enum.SurfaceType.SmoothNoOutlines
blade.Anchored = false
blade.Material = Enum.Material.Metal
blade.Size = Vector3.new(0.41, 2.581, 0.512)
blade.Name = "Blade"
blade.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
blade.CFrame = CFrame.new(81.752, 5.278, 34.598)* CFrame.Angles(-2.6529195308685, 0, -3.1415927410126)
blade.RightSurface = Enum.SurfaceType.SmoothNoOutlines
blade.BackSurface = Enum.SurfaceType.SmoothNoOutlines
blade.BrickColor = BrickColor.new("Fossil")
blade.Friction = 0.3
blade.CanCollide = false
blade.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh = Instance.new("SpecialMesh", blade)
mesh.MeshType = Enum.MeshType.Wedge

 part = Instance.new("Part", blade2)
part.FormFactor = Enum.FormFactor.Custom
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.Anchored = false
part.Material = Enum.Material.Metal
part.Size = Vector3.new(0.41, 1.721, 0.512)
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.CFrame = CFrame.new(81.752, 3.379, 33.589)* CFrame.Angles(0.48867347836494, 0, -0)
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.new("Fossil")
part.Friction = 0.3
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_2 = Instance.new("BlockMesh", part)

 handle1 = Instance.new("Part", blade2)
handle1.FormFactor = Enum.FormFactor.Custom
handle1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle1.Anchored = false
handle1.Material = Enum.Material.Metal
handle1.Size = Vector3.new(0.41, 2.721, 0.512)
handle1.Name = "Handle1"
handle1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle1.CFrame = CFrame.new(81.747, 1.366, 32.744)* CFrame.Angles(-2.7924835681915, 0, -0)
handle1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle1.BrickColor = BrickColor.new("Fossil")
handle1.Friction = 0.3
handle1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_3 = Instance.new("BlockMesh", handle1)

handle1pos = Instance.new("Part", scissors)
handle1pos.FormFactor = Enum.FormFactor.Custom
handle1pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle1pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle1pos.Anchored = false
handle1pos.Transparency = 1
handle1pos.CanCollide = false
handle1pos.Material = Enum.Material.Metal
handle1pos.Size = Vector3.new(0.41, 2.721, 0.512)
handle1pos.Name = "handle1pos"
handle1pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle1pos.CFrame = CFrame.new(81.747, 1.366, 32.744)* CFrame.Angles(-2.7924835681915, 0, -0)
handle1pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle1pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle1pos.BrickColor = BrickColor.new("Fossil")
handle1pos.Friction = 0.3
handle1pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 handle = Instance.new("Part", scissors)
handle.FormFactor = Enum.FormFactor.Custom
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Anchored = false
handle.Material = Enum.Material.Metal
handle.Size = Vector3.new(0.41, 0.41, 0.41)
handle.Name = "Handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(81.852, 2.992, 33.43)* CFrame.Angles(-2.8078470230103, 1.5037103891373, 1.2398878335953)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Dark stone grey")
handle.Friction = 0.3
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_4 = Instance.new("SpecialMesh", handle)
mesh_4.Scale = Vector3.new(1, 1.2, 1)
mesh_4.MeshType = Enum.MeshType.Sphere

local blade1 = Instance.new("Model", scissors)
blade1.Name = "Blade1"

 blade_2 = Instance.new("Part", blade1)
blade_2.FormFactor = Enum.FormFactor.Custom
blade_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
blade_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
blade_2.Anchored = false
blade_2.Material = Enum.Material.Metal
blade_2.Size = Vector3.new(0.41, 2.581, 0.512)
blade_2.Name = "Blade"
blade_2.CanCollide = false
blade_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
blade_2.CFrame = CFrame.new(81.752, 5.304, 32.333)* CFrame.Angles(-0.46782538294792, 0, -0)
blade_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
blade_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
blade_2.BrickColor = BrickColor.new("Fossil")
blade_2.Friction = 0.3
blade_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_5 = Instance.new("SpecialMesh", blade_2)
mesh_5.MeshType = Enum.MeshType.Wedge

 part_2 = Instance.new("Part", blade1)
part_2.FormFactor = Enum.FormFactor.Custom
part_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.Anchored = false
part_2.Material = Enum.Material.Metal
part_2.Size = Vector3.new(0.41, 1.721, 0.512)
part_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.CFrame = CFrame.new(81.752, 3.385, 33.302)* CFrame.Angles(2.6737668514252, 0, -3.1415927410126)
part_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_2.BrickColor = BrickColor.new("Fossil")
part_2.Friction = 0.3
part_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_6 = Instance.new("BlockMesh", part_2)

 handle1_2 = Instance.new("Part", blade1)
handle1_2.FormFactor = Enum.FormFactor.Custom
handle1_2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2.Anchored = false
handle1_2.Material = Enum.Material.Metal
handle1_2.Size = Vector3.new(0.41, 2.721, 0.512)
handle1_2.Name = "Handle1"
handle1_2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2.CFrame = CFrame.new(81.747, 1.366, 34.144)* CFrame.Angles(2.7925736904144, 0, -0)
handle1_2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2.BrickColor = BrickColor.new("Fossil")
handle1_2.Friction = 0.3
handle1_2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_7 = Instance.new("BlockMesh", handle1_2)

handle1_2pos = Instance.new("Part", scissors)
handle1_2pos.FormFactor = Enum.FormFactor.Custom
handle1_2pos.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2pos.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2pos.Anchored = false
handle1_2pos.Transparency = 1
handle1_2pos.CanCollide = false
handle1_2pos.Material = Enum.Material.Metal
handle1_2pos.Size = Vector3.new(0.41, 2.721, 0.512)
handle1_2pos.Name = "handle2pos"
handle1_2pos.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2pos.CFrame = CFrame.new(81.747, 1.366, 34.144)* CFrame.Angles(2.7925736904144, 0, -0)
handle1_2pos.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2pos.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle1_2pos.BrickColor = BrickColor.new("Fossil")
handle1_2pos.Friction = 0.3
handle1_2pos.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 part_3 = Instance.new("Part", scissors)
part_3.FormFactor = Enum.FormFactor.Custom
part_3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.Anchored = false
part_3.Material = Enum.Material.Metal
part_3.Size = Vector3.new(0.41, 0.41, 0.41)
part_3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.CFrame = CFrame.new(81.652, 3.002, 33.43)* CFrame.Angles(-2.8078470230103, 1.5037103891373, 1.2398878335953)
part_3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part_3.BrickColor = BrickColor.new("Dark stone grey")
part_3.Friction = 0.3
part_3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

 mesh_8 = Instance.new("SpecialMesh", part_3)
mesh_8.Scale = Vector3.new(1, 1.2, 1)
mesh_8.MeshType = Enum.MeshType.Sphere
scissors:BreakJoints()
blade1:BreakJoints()
blade2:BreakJoints()

local prev
local parts = scissors:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
scissors:MakeJoints()

local prev
local parts = blade1:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
blade1:MakeJoints()
local prev
local parts = blade2:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			if parts[i]:FindFirstChild("Weld") then parts[i]:FindFirstChild("Weld"):Destroy() end
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end
blade2:MakeJoints()

local particleemitter = Instance.new("ParticleEmitter", scissors.Handle)
particleemitter.VelocitySpread = 200
particleemitter.Speed = NumberRange.new(10)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 0.2)})
particleemitter.Rate = 10
particleemitter.Texture = "http://www.roblox.com/asset/?id=311395391"
particleemitter.Color = ColorSequence.new(Color3.new(1, 0.666667, 0), Color3.new(1, 0.666667, 0))
particleemitter.Enabled = false

scissors.Handle.Weld.Name = "Weld2"
weld(blade1.Handle1, scissors.handle1pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(blade2.Handle1, scissors.handle2pos, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0))
---Model Build End---
weld(tor, ra, CFrame.new(1,0,-1)*CFrame.Angles(math.rad(90),0,0))
weld(la, ra, CFrame.new(2,0,0)*CFrame.Angles(math.rad(0),0,0))
weld(scissors.Handle, tor, CFrame.new(4,0,-.2)*CFrame.Angles(math.rad(95),(math.rad(90)),0))
local sc1 = Instance.new("Sound")
sc1.SoundId="rbxassetid://357622136"
sc1.PlayOnRemove=false
sc1.Volume=0.7
sc1.Looped=false
sc1.Pitch = 1
sc1.Parent=scissors.Handle
local sc2 = Instance.new("Sound")
sc2.SoundId="rbxassetid://240785604"
sc2.PlayOnRemove=false
sc2.Volume=0.7
sc2.Looped=false
sc2.Pitch = 1
sc2.Parent=scissors.Handle

local open = true
function scissoropen()
open = true
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-2),0,0)
wait()
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(4),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-4),0,0)
wait()
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(6),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6),0,0)
end

function scissorclose()
open = false
attacking = true
sc1:Play()
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(-2),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(2),0,0)
wait()
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(-4),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(4),0,0)
wait()
blade2.Handle1.Weld.C0 =  CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6),0,0)
blade1.Handle1.Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(6),0,0)
attacking = false
end

mouse.Button2Down:connect(function()
	if open == false then
	scissoropen()
	end
end)
mouse.Button1Down:connect(function()
	if open == true then
	scissorclose()
	end
end)

local blood = Instance.new("ParticleEmitter")
blood.VelocitySpread = 180
blood.Lifetime = NumberRange.new(1, 2)
blood.Speed = NumberRange.new(10)
blood.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
blood.Acceleration = Vector3.new(0, -10, 0)
blood.RotSpeed = NumberRange.new(260)
blood.Texture = "http://www.roblox.com/asset/?id=176677966"

blade.Touched:connect(function(h)
	if attacking == true then
		if h.Parent:FindFirstChild("Humanoid") then 
			if h.Parent:FindFirstChild("Torso") then
				local pclone = blood:Clone()
					pclone.Parent = h
					game.Debris:AddItem(pclone,1)
			end
			if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
			if h.Name == "Torso" then h.Parent.Humanoid:TakeDamage(math.random(20,40)) end
			if h.Name == "Left Arm" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Right Arm" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Left Leg" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Right Leg" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Head" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
		end
	end
end)
blade_2.Touched:connect(function(h)
	if attacking == true then
		--if h.Parent:FindFirstChild("Humanoid") == nil and not h.Name:lower():find("base") then
	--h.Anchored = false
				--h.Velocity  = char.Head.CFrame.lookVector*30
	            --h:BreakJoints()
--end
		if h.Parent:FindFirstChild("Humanoid") then 
			if h.Parent:FindFirstChild("Torso") then
				local pclone = blood:Clone()
					pclone.Parent = h
					game.Debris:AddItem(pclone,1)
			end
			if h.Parent.Humanoid.Parent:FindFirstChild("ForceField") then h.Parent.ForceField:Destroy() end
			if h.Name == "Torso" then h.Parent.Humanoid:TakeDamage(math.random(20,40)) end
			if h.Name == "Left Arm" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Right Arm" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Left Leg" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Right Leg" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
			if h.Name == "Head" then local clone = h:Clone() clone.Parent = workspace clone.Position = h.Position clone.CanCollide = true h:Destroy() end
		end
	end
end)

local fpressed = 0
mouse.KeyDown:connect(function(key)
if key == "f" then
	fpressed = fpressed + 1
	if fpressed == 1 then
		tor.Weld.C0 = CFrame.new(1,.5,-1)*CFrame.Angles(math.rad(100),0,0)
		scissors.Handle.Weld.C0 = CFrame.new(4,0,-.8)*CFrame.Angles(math.rad(95),(math.rad(90)),0)
	end
	if fpressed ==2 then
		tor.Weld.C0 = CFrame.new(1,-.5,-1)*CFrame.Angles(math.rad(90),0,0)
		scissors.Handle.Weld.C0 = CFrame.new(4,0,.4)*CFrame.Angles(math.rad(95),(math.rad(90)),0)
	end
	if fpressed == 3 then
		fpressed = 0
		tor.Weld.C0 = CFrame.new(1,0,-1)*CFrame.Angles(math.rad(90),0,0)
		scissors.Handle.Weld.C0 = CFrame.new(4,0,-.2)*CFrame.Angles(math.rad(95),(math.rad(90)),0)
	end
end
end)