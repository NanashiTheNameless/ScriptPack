p = game.Players:GetChildren() 
randplayer = p[math.random(#p)] 

local msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "Freeze tag beginning..."
wait(2)
msg.Text = randplayer.Name.." is the tag!!"
wait(4)

for i = 1, #p do
if p[i].Character then
p[i].Character.Torso.CFrame = game.Workspace.Base.CFrame * CFrame.new(math.random(-140,140),30,math.random(-140,140))
end
end

randplayer.Character.Humanoid.WalkSpeed = 17
local bffg = Instance.new("BodyForce")
bffg.Parent = randplayer.Character.Torso
bffg.force = Vector3.new(0, 1200, 0)
print("Force")
local mep = randplayer.Character:GetChildren()
for i = 1, #mep do
if mep[i].className == "Part" then
local sparks = Instance.new("Sparkles")
sparks.Parent = mep[i]
sparks.Color = Color3.new(0,1,1)
local spark = Instance.new("Fire")
spark.Parent = mep[i]
spark.Color = Color3.new(0,0,1)
spark.SecondaryColor = Color3.new(0,0,1)
end
end

local tagger = Instance.new("NumberValue") 
tagger.Name = "Tag" 
tagger.Parent = randplayer.Character 
tagger.Value = 1 
print("Tag")
function onPlayerEntered(newPlayer) 
local stats = Instance.new("IntValue") 
stats.Name = "leaderstats" 
local p = Instance.new("IntValue") 
p.Name = "Tags" 
p.Value = 0 
p.Parent = stats
stats.Parent = newPlayer 
local val = Instance.new("NumberValue") 
val.Parent = newPlayer.Character 
val.Value = 0 
val.Name = "Froze" 
end 
game.Players.ChildAdded:connect(onPlayerEntered) 
for _, v in pairs(game.Players:GetPlayers()) do 
onPlayerEntered(v)
end



 
print("ok")
function freeze(hit) 
	print("hitted")
	local ple = game.Players:findFirstChild(hit.Parent.Name) 
	if ple ~= nil then 
		local ic = ple.Character:findFirstChild("Ice")
		if ic ~= nil then return end
		randplayer.leaderstats.Tags.Value = randplayer.leaderstats.Tags.Value + 1
		print("found player")
		local find = ple.Character:findFirstChild("Froze")
		if find == nil then
			print("making value")
			local fr = Instance.new("NumberValue")
			fr.Parent = ple.Character
			fr.Value = 0
			fr.Name = "Froze"
		end
		local fisd = ple.Character:findFirstChild("Tag")
		if fisd ~= nil then return end
		print("ok lol") 
		if ple.Character.Froze.Value == 1 then return end 
		ple.Character.Froze.Value = 1 
		part = Instance.new("Part") 
		part.Name = "Ice"
		part.BrickColor = BrickColor.new("Light blue") 
		part.Reflectance = 0.2 
		part.Transparency = 0.2 
		part.formFactor = "Symmetric" 
		part.Size = Vector3.new(5,9,5) 
		part.TopSurface = "Smooth" 
		part.BottomSurface = "Smooth" 
		part.CanCollide = false 
		part.CFrame = ple.Character.Torso.CFrame 
		part.Anchored = true 
		part.Parent = ple.Character 
		local toucs = Instance.new("IntValue")
		toucs.Parent = part
		toucs.Value = 0
		toucs.Name = "hitted"
		ple.Character.Torso.Anchored = true 
		ple.Character.Humanoid.WalkSpeed = 0 
		local mgf = Instance.new("Message")
		mgf.Parent = game.Workspace
		mgf.Text = ple.Name.." froze."
		wait(1)
		mgf:remove()
		print("works")
		part.Touched:connect(function(hi)
			local kl = game.Players:findFirstChild(hi.Parent.Name)
			if kl == nil then return end
			local ta = kl.Character:findFirstChild("Tag")
			if ta ~= nil then return end
			local taaf = kl:findFirstChild("leaderstats")
			print("found player")
			local tasd = taaf:findFirstChild("Tags")
			if tasd == nil then return end
			local fih = ple.Character:findFirstChild("Froze")
			if fih == nil then
				print("making value")
				local fr = Instance.new("NumberValue")
				fr.Parent = ple.Character
				fr.Value = 0
				fr.Name = "Froze"
			end
			local fdf = part:findFirstChild("hitted")
			if fdf.Value == 1 then return end
			fdf.Value = 1
			tasd.Value = tasd.Value + 1
			ple.Character.Ice.CanCollide = false 
			ple.Character.Ice.Anchored = false 
			ple.Character.Torso.Anchored = false 
			ple.Character.Humanoid.WalkSpeed = 16 
			ple.Character.Froze.Value = 0 
			local md = Instance.new("Message")
			md.Parent = game.Workspace
			md.Text = ple.Name.." melted."
			wait(1)
			md:remove()
		end)
	end 
	print("WORKS")
end 


randplayer.Character.Torso.Touched:connect(freeze) 

msg.Text = "Please wait.. making map.."
local map = Instance.new("Model")
map.Parent = game.Workspace
game.Workspace.Base.TopSurface = 0
game.Workspace.Base.BrickColor = BrickColor.new("Earth green")
wait()
local wall1 = Instance.new("Part")
wall1.Parent = map
wall1.Size = Vector3.new(512,200,2)
wall1.BrickColor = BrickColor.new("Earth green")
wall1.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,100,160)
wall1.Anchored = true
wait()
local wall2 = wall1:clone()
wall2.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,100,-160)
wall2.Parent = map
wait()
local wall3 = Instance.new("Part")
wall3.Parent = map
wall3.Size = Vector3.new(2,200,512)
wall3.BrickColor = BrickColor.new("Earth green")
wall3.CFrame = game.Workspace.Base.CFrame * CFrame.new(160,100,0)
wall3.Anchored = true
wait()
local wall4 = wall3:clone()
wall4.CFrame = game.Workspace.Base.CFrame * CFrame.new(-160,100,0)
wall4.Parent = map
wait()
local roof = Instance.new("Part")
roof.Parent = map
roof.Size = Vector3.new(512,2,512)
roof.BrickColor = BrickColor.new("Earth green")
roof.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,130,0)
roof.Anchored = true
roof.BottomSurface = 0
wait()
local fog1 = Instance.new("Part")
fog1.Parent = map
fog1.Size = Vector3.new(1,8,1)
fog1.BrickColor = BrickColor.new("Pastel yellow")
fog1.Transparency = 0.9
fog1.TopSurface = 0
fog1.CanCollide = false
fog1.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,7,0)
fog1.Anchored = true
fog1.BottomSurface = 0
local fog237 = Instance.new("SpecialMesh")
fog237.Parent = fog1
fog237.MeshType = "Brick"
fog237.Scale = Vector3.new(512,1,512)
wait()
local fog2 = fog1:clone()
fog2.Parent = map
fog2.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,6,0)
wait()
local fog3 = fog1:clone()
fog3.Parent = map
fog3.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,5,0)
wait()
local fog4 = fog1:clone()
fog4.Parent = map
fog4.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,4,0)
wait()
local fog5 = fog1:clone()
fog5.Parent = map
fog5.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,3,0)
wait()
local fog6 = fog1:clone()
fog6.Parent = map
fog6.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,2,0)
wait()
local fog7 = fog1:clone()
fog7.Parent = map
fog7.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,1,0)
wait()
local fog8 = fog1:clone()
fog8.Parent = map
fog8.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,0,0)
wait()
local fog9 = fog1:clone()
fog9.Parent = map
fog9.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,-1,0)
wait()
local fog11 = fog1:clone()
fog11.Parent = map
fog11.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,8,0)
wait()
local fog22 = fog1:clone()
fog22.Parent = map
fog22.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,9,0)
wait()
local fog22 = fog1:clone()
fog22.Parent = map
fog22.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,9,0)
wait()
for i = 1, 20 do
wait()
local fog23 = Instance.new("Part")
fog23.Parent = map
fog23.Size = Vector3.new(1,1,1)
fog23.BrickColor = BrickColor.new("Pastel yellow")
fog23.Transparency = 0.98
fog23.TopSurface = 0
fog23.CanCollide = false
fog23.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,math.random(4,130),0)
fog23.Anchored = true
fog23.BottomSurface = 0
local fog235 = Instance.new("SpecialMesh")
fog235.Parent = fog23
fog235.MeshType = "Brick"
fog235.Scale = Vector3.new(512,1,512)
end
local ball = Instance.new("Part")
ball.Parent = map
ball.Shape = "Ball"
ball.Size = Vector3.new(130,130,130)
ball.BrickColor = BrickColor.new("Earth green")
ball.TopSurface = 0
ball.CFrame = game.Workspace.Base.CFrame * CFrame.new(0,-43,0)
ball.Anchored = true
ball.BottomSurface = 0
wait()
local ball2 = ball:clone()
ball2.Parent = map
ball2.CFrame = game.Workspace.Base.CFrame * CFrame.new(30,-48,25)
wait()
local ball3 = ball:clone()
ball3.Parent = map
ball3.Size = Vector3.new(90,90,90)
ball3.CFrame = game.Workspace.Base.CFrame * CFrame.new(125,-28,80)
wait()
local ball4 = ball:clone()
ball4.Parent = map
ball4.Size = Vector3.new(90,90,90)
ball4.CFrame = game.Workspace.Base.CFrame * CFrame.new(40,-20,-90)
wait()
local ball5 = ball:clone()
ball5.Parent = map
ball5.Size = Vector3.new(140,140,140)
ball5.CFrame = game.Workspace.Base.CFrame * CFrame.new(160,-50,130)
wait()
local ball6 = ball:clone()
ball6.Parent = map
ball6.Size = Vector3.new(140,140,140)
ball6.CFrame = game.Workspace.Base.CFrame * CFrame.new(-100,-50,70)
wait()
local ball7 = ball:clone()
ball7.Parent = map
ball7.Size = Vector3.new(170,170,170)
ball7.CFrame = game.Workspace.Base.CFrame * CFrame.new(-100,-54,-100)
wait()
local ball8 = ball:clone()
ball8.Parent = map
ball8.Size = Vector3.new(170,170,170)
ball8.CFrame = game.Workspace.Base.CFrame * CFrame.new(110,-64,-60)
wait()
local plant = Instance.new("Part")
plant.Parent = map
plant.CanCollide = false
plant.Size = Vector3.new(1,1,1)
plant.CFrame = game.Workspace.Base.CFrame * CFrame.new(20,20,20)
plant.Anchored = true
plant.BrickColor = BrickColor.new("Camo")
local mes = Instance.new("SpecialMesh")
mes.Parent = plant
mes.MeshType = "FileMesh"
mes.MeshId = "http://www.roblox.com/asset/?id=1091940"
mes.Scale = Vector3.new(10,10,10)
wait()
local pla1 = plant:clone()
pla1.Parent = map
pla1.CFrame = game.Workspace.Base.CFrame * CFrame.new(-20,22,10)
wait()
local pla2 = plant:clone()
pla2.Parent = map
pla2.CFrame = game.Workspace.Base.CFrame * CFrame.new(-30,7,50)
wait()
local pla3 = plant:clone()
pla3.Parent = map
pla3.CFrame = game.Workspace.Base.CFrame * CFrame.new(90,22,-50)
wait()
local pla4 = plant:clone()
pla4.Parent = map
pla4.CFrame = game.Workspace.Base.CFrame * CFrame.new(118,7,24)
wait()
for i = 1, 40 do
wait()
local pla5 = plant:clone()
pla5.Parent = map
pla5.CFrame = game.Workspace.Base.CFrame * CFrame.new(math.random(-160,160),math.random(0,8),math.random(-160,160))
end
for i = 1, 38 do
wait()
local clo = Instance.new("Part")
clo.Parent = map
clo.CanCollide = false
clo.Size = Vector3.new(1,1,1)
clo.CFrame = game.Workspace.Base.CFrame * CFrame.new(math.random(-160,160),math.random(115,140),math.random(-160,160))
clo.Anchored = true
clo.Transparency = 0.4
clo.BrickColor = BrickColor.new("Medium stone grey")
local msd = Instance.new("SpecialMesh")
msd.Parent = clo
msd.MeshType = "FileMesh"
msd.MeshId = "http://www.roblox.com/asset/?id=1095708"
local k = math.random(45,100)
msd.Scale = Vector3.new(k,k,k)
end
msg:remove()
while true do
local wat = Instance.new("Part")
wat.Parent = map
wat.CanCollide = false
wat.Size = Vector3.new(1,8,1)
wat.BrickColor = BrickColor.new("Light blue")
wat.Transparency = 0.4
wat.CFrame = game.Workspace.Base.CFrame * CFrame.new(math.random(-160,160),math.random(100,155),math.random(-160,160))
local meshf = Instance.new("SpecialMesh")
meshf.Parent = wat
meshf.Scale = Vector3.new(0.5, 1, 0.5)
local bvv = Instance.new("BodyVelocity")
bvv.Parent = wat
bvv.maxForce = Vector3.new(100000000,100000000,100000000)
bvv.velocity = Vector3.new(0, math.random(-450,-300), 0)
wait(0.14)
end

