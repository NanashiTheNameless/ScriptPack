local punched1 = true
local punched2 = false
local punched3 = false
local punched4 = false
local beamgo4 = 2.2
local beamgo3 = 1
local trans = 1
local ssj1 = false
local ssj2 = false
local transforming1 = false
local transforming2 = false
local transforming3 = false
local transforming4 = false
local onaura = true
local num = 0
local enabled = true
local beamgo = 2.2
local beamgo1 = 1
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local root = char.HumanoidRootPart
local canattack = true
local canwalk = true
local canwalk1 = true
local canidle = true
local rs = game:GetService("RunService").RenderStepped
local new = Instance.new
local v3 = Vector3.new
local ns = NumberSequence.new
local nr = NumberRange.new
local bc = BrickColor.new
local cf = CFrame.new
local cfa = CFrame.Angles
local rad = math.rad
local startk = false
local beam1 = false
local beam2 = false
for i,v in pairs(char:GetChildren()) do
	if v.ClassName == "Accessory" then
		v:Destroy()
	end
end
-----------------------------------
--god/health

		Instance.new("ForceField",char).Visible = false
		hum.MaxHealth = math.huge
		hum.Health = math.huge
		hum.Name = "nohit"
		
-----------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------------------------------------------------------
--GoundWaves
GroundWave1 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) + torso.CFrame.lookVector * 5
	Colors = {"White", "White"}
		local wave = Instance.new("Part", char)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.Name = "Wave"
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
GroundWave2 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
		local wave3 = Instance.new("Part", char)
		wave3.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave3.Anchored = true
		wave3.Name = "Wave"
		wave3.CanCollide = false
		wave3.Locked = true
		wave3.Size = Vector3.new(1, 1, 1)
		wave3.TopSurface = "Smooth"
		wave3.BottomSurface = "Smooth"
		wave3.Transparency = 0.35
		wave3.CFrame = HandCF
		wm1 = Instance.new("SpecialMesh", wave3)
		wm1.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm1.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave3.Size = wm1.Scale
		wave3.CFrame = HandCF
		wave3.Transparency = i/30
		wait()
		end
		wait()
		wave3:Destroy()
	end)()
end
GroundWave3 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
		local wave2 = Instance.new("Part", char)
		wave2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave2.Anchored = true
		wave2.Name = "Wave"
		wave2.CanCollide = false
		wave2.Locked = true
		wave2.Size = Vector3.new(1, 1, 1)
		wave2.TopSurface = "Smooth"
		wave2.BottomSurface = "Smooth"
		wave2.Transparency = 0.35
		wave2.CFrame = HandCF
		wm2 = Instance.new("SpecialMesh", wave2)
		wm2.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm2.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave2.Size = wm2.Scale
		wave2.CFrame = HandCF
		wave2.Transparency = i/30
		wait()
		end
		wait()
		wave2:Destroy()
	end)()
end
GroundWave4 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	Colors = {"White", "White"}
		local wave1 = Instance.new("Part", char)
		wave1.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave1.Anchored = true
		wave1.Name = "Wave"
		wave1.CanCollide = false
		wave1.Locked = true
		wave1.Size = Vector3.new(1, 1, 1)
		wave1.TopSurface = "Smooth"
		wave1.BottomSurface = "Smooth"
		wave1.Transparency = 0.35
		wave1.CFrame = HandCF
		wm3 = Instance.new("SpecialMesh", wave1)
		wm3.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm3.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave1.Size = wm3.Scale
		wave1.CFrame = HandCF
		wave1.Transparency = i/30
		wait()
		end
		wait()
		wave1:Destroy()
	end)()
end
--------------------------------------------------------------------------
--transform
GroundWave5 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	Colors = {"New Yeller", "New Yeller"}
		local wave11 = Instance.new("Part", char)
		wave11.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave11.Anchored = true
		wave11.Name = "Wave"
		wave11.CanCollide = false
		wave11.Locked = true
		wave11.Size = Vector3.new(1, 1, 1)
		wave11.TopSurface = "Smooth"
		wave11.BottomSurface = "Smooth"
		wave11.Transparency = 0.35
		wave11.CFrame = HandCF
		wm31 = Instance.new("SpecialMesh", wave11)
		wm31.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm31.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave11.Size = wm31.Scale
		wave11.CFrame = HandCF
		wave11.Transparency = i/30
		wait()
		end
		wait()
		wave11:Destroy()
	end)()
end
GroundWave6 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"New Yeller", "New Yeller"}
		local wave111 = Instance.new("Part", char)
		wave111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave111.Anchored = true
		wave111.Name = "Wave"
		wave111.CanCollide = false
		wave111.Locked = true
		wave111.Size = Vector3.new(1, 1, 1)
		wave111.TopSurface = "Smooth"
		wave111.BottomSurface = "Smooth"
		wave111.Transparency = 0.35
		wave111.CFrame = HandCF
		wm311 = Instance.new("SpecialMesh", wave111)
		wm311.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm311.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave111.Size = wm311.Scale
		wave111.CFrame = HandCF
		wave111.Transparency = i/30
		wait()
		end
		wait()
		wave111:Destroy()
	end)()
end
GroundWave7 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
	Colors = {"New Yeller", "New Yeller"}
		local wave1111 = Instance.new("Part", char)
		wave1111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave1111.Anchored = true
		wave1111.Name = "Wave"
		wave1111.CanCollide = false
		wave1111.Locked = true
		wave1111.Size = Vector3.new(1, 1, 1)
		wave1111.TopSurface = "Smooth"
		wave1111.BottomSurface = "Smooth"
		wave1111.Transparency = 0.35
		wave1111.CFrame = HandCF
		wm3111 = Instance.new("SpecialMesh", wave1111)
		wm3111.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm3111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave1111.Size = wm3111.Scale
		wave1111.CFrame = HandCF
		wave1111.Transparency = i/30
		wait()
		end
		wait()
		wave1111:Destroy()
	end)()
end
GroundWave8 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(40), math.rad(90), math.rad(0))
	Colors = {"New Yeller", "New Yeller"}
		local wave11111 = Instance.new("Part", char)
		wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave11111.Anchored = true
		wave11111.Name = "Wave"
		wave11111.CanCollide = false
		wave11111.Locked = true
		wave11111.Size = Vector3.new(1, 1, 1)
		wave11111.TopSurface = "Smooth"
		wave11111.BottomSurface = "Smooth"
		wave11111.Transparency = 0.35
		wave11111.CFrame = HandCF
		wm31111 = Instance.new("SpecialMesh", wave11111)
		wm31111.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave11111.Size = wm31111.Scale
		wave11111.CFrame = HandCF
		wave11111.Transparency = i/30
		wait()
		end
		wait()
		wave11111:Destroy()
	end)()
end
GroundWave9 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(40))
	Colors = {"New Yeller", "New Yeller"}
		local wave111111 = Instance.new("Part", char)
		wave111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave111111.Anchored = true
		wave111111.Name = "Wave"
		wave111111.CanCollide = false
		wave111111.Locked = true
		wave111111.Size = Vector3.new(1, 1, 1)
		wave111111.TopSurface = "Smooth"
		wave111111.BottomSurface = "Smooth"
		wave111111.Transparency = 0.35
		wave111111.CFrame = HandCF
		wm311111 = Instance.new("SpecialMesh", wave111111)
		wm311111.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm311111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave111111.Size = wm311111.Scale
		wave111111.CFrame = HandCF
		wave111111.Transparency = i/30
		wait()
		end
		wait()
		wave111111:Destroy()
	end)()
end
GroundWave10 = function()
	local HandCF = torso.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	Colors = {"New Yeller", "New Yeller"}
		local wave1111111 = Instance.new("Part", char)
		wave1111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave1111111.Anchored = true
		wave1111111.Name = "Wave"
		wave1111111.CanCollide = false
		wave1111111.Locked = true
		wave1111111.Size = Vector3.new(1, 1, 1)
		wave1111111.TopSurface = "Smooth"
		wave1111111.BottomSurface = "Smooth"
		wave1111111.Transparency = 0.35
		wave1111111.CFrame = HandCF
		wm3111111 = Instance.new("SpecialMesh", wave1111111)
		wm3111111.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm3111111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
		wave1111111.Size = wm3111111.Scale
		wave1111111.CFrame = HandCF
		wave1111111.Transparency = i/30
		wait()
		end
		wait()
		wave1111111:Destroy()
	end)()
end
----------------------------------------------------------------------------------------------------
--Hair

a8 = new("Part",char)
a8.Name = "Hair"
a8.Size = v3(2.92, 2.58, 2.72)
a8.BrickColor = bc("Really black")
a8.Material = "Neon"
a8.Transparency = 0
aa8 = new("SpecialMesh",a8)
aa8.MeshType = "FileMesh"
aa8.Scale = v3(7.3,7.3,7.3)
aa8.MeshId = "rbxassetid://455100513"
aaa8 =new("Weld",a8)
aaa8.Part0 = hed
aaa8.Part1 = a8
aaa8.C0 = cf(-0.15,.9,-0.1) * cfa(rad(0),rad(0),rad(0))









--Clothes
if char.Shirt == nil then
	Instance.new("Shirt",char)
end
if char.Pants == nil then
	Instance.new("Pants",char)
end
wait(0.5)
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=295880138"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=295880753"

------------------------------------------------------------------------------
--Sounds
--Folder
soundfolder = Instance.new("Model",char)
soundfolder.Name = "Sound Folder"
--Sounds
kamecharge = Instance.new("Sound",soundfolder)
kamecharge.Volume = 10
kamecharge.Name = "kamecharge"
kamecharge.Looped = false
kamecharge.SoundId = "rbxassetid://908489666"
kamefire = Instance.new("Sound",soundfolder)
kamefire.Volume = 10
kamefire.Name = "kamefire"
kamefire.Looped = false
kamefire.SoundId = "rbxassetid://908474188"
kamehit = Instance.new("Sound",soundfolder)
kamehit.Volume = 30
kamehit.Name = "kamehit"
kamehit.Looped = false
kamehit.SoundId = "rbxassetid://908484148"
ssjaura = Instance.new("Sound",soundfolder)
ssjaura.Volume = 10
ssjaura.Name = "ssjaura"
ssjaura.Looped = true
ssjaura.SoundId = "rbxassetid://891397456"
ssjauraburst = Instance.new("Sound",soundfolder)
ssjauraburst.Volume = math.huge
ssjauraburst.Name = "ssjauraburst"
ssjauraburst.Looped =false
ssjauraburst.SoundId = "rbxassetid://437393965"
ssjmusic = Instance.new("Sound",soundfolder)
ssjmusic.Volume = 10
ssjmusic.Name = "ssjmusic"
ssjmusic.Looped = true
ssjmusic.SoundId = "rbxassetid://194135434"
ssj2music = Instance.new("Sound",soundfolder)
ssj2music.Volume = 10
ssj2music.Name = "ssj2music"
ssj2music.Looped = true
ssj2music.SoundId = "rbxassetid://144377132"
ssj2aura = Instance.new("Sound",soundfolder)
ssj2aura.Volume = 10
ssj2aura.Name = "ssj2aura"
ssj2aura.Looped = true
ssj2aura.SoundId = "rbxassetid://262498455"
Lightning = Instance.new("Sound",soundfolder)
Lightning.Volume = math.huge
Lightning.Name = "Lightning"
Lightning.Looped = false
Lightning.SoundId = "rbxasset://sounds/HalloweenThunder.wav"
fahersonstart = Instance.new("Sound",soundfolder)
fahersonstart.Volume = math.huge
fahersonstart.Name = "fahersonstart"
fahersonstart.Looped = false
fahersonstart.SoundId = "rbxassetid://958391048"
fahersonend = Instance.new("Sound",soundfolder)
fahersonend.Volume = math.huge
fahersonend.Name = "fahersonend"
fahersonend.Looped = false
fahersonend.SoundId = "rbxassetid://958391222"
punchsound = Instance.new("Sound",soundfolder)
punchsound.Volume = 10
punchsound.Name = "punchsound"
punchsound.Looped = false
punchsound.SoundId = "rbxassetid://896246498"
punchsound1 = Instance.new("Sound",soundfolder)
punchsound1.Volume = 10
punchsound1.Name = "punchsound1"
punchsound1.Looped = false
punchsound1.SoundId = "rbxassetid://137579113"











----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
--Animations
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



function firsthit()
	punchsound:Play()

for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(20)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.5)--leg
		wait()
end


ag = new("Part",char)
ag.Name = "NewPart"
ag.Size = v3(1,1,1)
ag.CanCollide = false
ag.Position = v3(999,999,999)
ag.BrickColor = bc("Color")
ag.Material = "Neon"
ag.Transparency = 1
aaag =new("Weld",ag)
aaag.Part0 = rarm
aaag.Part1 = ag
aaag.C0 = cf(0,-1.5,0) * cfa(rad(0),rad(0),rad(0))


ag.Touched:connect(function(hit)
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			ag.TouchInterest:Destroy()
			if ssj1 == false and ssj2 == false then
			v.Health = v.Health - 10
			end
			if ssj1 == true and ssj2 == true then
			v.Health = v.Health - 20
			end
			if ssj1 == false and ssj2 == true then
			v.Health = v.Health - 30
			end
			punchsound1:Play()
			
			
			
			
		end
	end
end)




		for i= 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(50), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.8)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.5)--leg
	wait()
		end
		ag:Destroy()
end
function secondhit()
	punchsound:Play()

		for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(20), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.5)--leg
		wait()
		end
		
		
		
		ag = new("Part",char)
ag.Name = "NewPart"
ag.Size = v3(1,1,1)
ag.CanCollide = false
ag.Position = v3(999,999,999)
ag.BrickColor = bc("Color")
ag.Material = "Neon"
ag.Transparency = 1
aaag =new("Weld",ag)
aaag.Part0 = larm
aaag.Part1 = ag
aaag.C0 = cf(0,-1.5,0) * cfa(rad(0),rad(0),rad(0))



ag.Touched:connect(function(hit)
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			ag.TouchInterest:Destroy()
			if ssj1 == false and ssj2 == false then
			v.Health = v.Health - 10
			end
			if ssj1 == true and ssj2 == false then
			v.Health = v.Health - 20
			end
			if ssj1 == false and ssj2 == true then
			v.Health = v.Health - 30
			end
			punchsound1:Play()
			
			
			
		end
	end
end)

		
		
		
		
		
		
		
		for i= 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(-70), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.0,0.5,-0.8)*CFrame.Angles(math.rad(160),math.rad(70),math.rad(10)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),.5)--leg
	wait()
		end
		ag:Destroy()
end
function thirdhit()
	punchsound:Play()

for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-60), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.5)--leg
		wait()
end


ag = new("Part",char)
ag.Name = "NewPart"
ag.Size = v3(1,1,1)
ag.CanCollide = false
ag.Position = v3(999,999,999)
ag.BrickColor = bc("Color")
ag.Material = "Neon"
ag.Transparency = 1
aaag =new("Weld",ag)
aaag.Part0 = rleg
aaag.Part1 = ag
aaag.C0 = cf(0,-1.5,0) * cfa(rad(0),rad(0),rad(0))



ag.Touched:connect(function(hit)
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			ag.TouchInterest:Destroy()
			if ssj1 == false and ssj2 == false then
			v.Health = v.Health - 10
			end
			if ssj1 == true and ssj2 == false then
			v.Health = v.Health - 20
			end
			if ssj1 == false and ssj2 == true then
			v.Health = v.Health - 30
			end
			
			punchsound1:Play()
			
			
			
		end
	end
end)

















for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(50), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(120), math.rad(20), math.rad(-30)),.5)--leg
		wait()
end
ag:Destroy()
end
function lasthit()
	punchsound:Play()

for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(-40),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),.5)--leg
		wait()
end











ag = new("Part",char)
ag.Name = "NewPart"
ag.Size = v3(1,1,1)
ag.CanCollide = false
ag.Position = v3(999,999,999)
ag.BrickColor = bc("Color")
ag.Material = "Neon"
ag.Transparency = 1
aaag =new("Weld",ag)
aaag.Part0 = lleg
aaag.Part1 = ag
aaag.C0 = cf(0,-1.5,0) * cfa(rad(0),rad(0),rad(0))



ag.Touched:connect(function(hit)
	for i,v in pairs(hit.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			ag.TouchInterest:Destroy()
			if ssj1 == false and ssj2 == false then
			v.Health = v.Health - 10
			end
			if ssj1 == true and ssj2 == false then
			v.Health = v.Health - 20
			end
			if ssj1 == false and ssj2 == true then
			v.Health = v.Health - 30
			end
			
			
			punchsound1:Play()
			
			
		end
	end
end)








for i = 1,5 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(30),math.rad(0)), .5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(-60), math.rad(0)), .5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), .5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)), .5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -.6) * CFrame.Angles(math.rad(120), math.rad(-30), math.rad(20)), .5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.5)--leg
		wait()
end
ag:Destroy()
end






















function startkamehameha()	
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--leg
		
for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(30)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(65),math.rad(0),math.rad(-30)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-3)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(3)), 0.1)--leg
		end
for i = 1, 20 do
		wait()
		
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.7,-0.5)*CFrame.Angles(math.rad(85),math.rad(-10),math.rad(-30)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1,0.3,-0.5)*CFrame.Angles(math.rad(85),math.rad(10),math.rad(30)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-3)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(3)), 0.1)--leg
end
kamecharge:Play()
startk = true
for i = 1, 100 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(70),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-70), math.rad(5)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.7,-0.5)*CFrame.Angles(math.rad(50),math.rad(-10),math.rad(-30)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1,0.3,-0.5)*CFrame.Angles(math.rad(65),math.rad(10),math.rad(30)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 0.1)--leg
end
	end
	function endkamehameha()
for i = 1, 10 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.7,-0.5)*CFrame.Angles(math.rad(95),math.rad(-10),math.rad(-30)), 0.5)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1,0.3,-0.5)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(30)), 0.5)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.5)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 0.5)--leg
end
	end
function fatherson()
for i = 1,50 do
	wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-0.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), .1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)), .1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), .1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), .1)--leg
end
wait(2)
for i = 1,50 do	
	wait()
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(40),math.rad(0)), .1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(-60), math.rad(0)), .1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)), .1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-20)), .1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), .1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(5)), .1)--leg
end
end
function fathersonfire()
for i = 1,10 do
	wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-0.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), .4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10)), .4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), .4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), .4)--leg
end
end
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	a = new("Part",char)
a.Name = "NewPart"
a.Size = v3(0.1,0.1,0.1)
a.Shape = "Ball"
a.Position = v3(999,999,999)
a.BrickColor = bc("bright Blue")
a.Material = "Neon"
a.Transparency = 1
aa = new("SpecialMesh",a)
aa.Scale = v3(1,1,1)
aaa =new("Weld",a)
aaa.Part0 = torso
aaa.Part1 = a
aaa.C0 = cf(0,0,-1.6) * cfa(rad(0),rad(0),rad(0))
aaaa = new("ParticleEmitter",a)
aaaa.Size = ns(1)
aaaa.Rate = 5
aaaa.Texture = "rbxassetid://246381828"
aaaa.ZOffset = 1
aaaa.Lifetime = nr(5)
aaaa.Transparency = ns(1)
aaaa.LockedToPart = true
aaaa.Speed = nr(0)
aw = new("Part",char)
aw.Name = "NewPart"
aw.Size = v3(0.1,0.1,0.1)
aw.Shape = "Ball"
aw.Position = v3(999,999,999)
aw.BrickColor = bc("bright Blue")
aw.Material = "Neon"
aw.Transparency = 1
aaw = new("SpecialMesh",aw)
aaw.Scale = v3(1,1,1)
aaaw =new("Weld",aw)
aaaw.Part0 = torso
aaaw.Part1 = aw
aaaw.C0 = cf(0,0,-1.6) * cfa(rad(0),rad(0),rad(0))
aaaaw = new("ParticleEmitter",aw)
aaaaw.Size = ns(5)
aaaaw.Rate = 5
aaaaw.Color = ColorSequence.new(Color3.fromRGB(149,190,255))
aaaaw.Texture = "rbxassetid://924710961"
aaaaw.ZOffset = -1
aaaaw.Lifetime = nr(5)
aaaaw.RotSpeed = nr(50)
aaaaw.Transparency = ns(1)
aaaaw.LockedToPart = true
aaaaw.Speed = nr(0)



ae = new("Part",char)
ae.Name = "NewPart"
ae.Size = v3(0.1,0.1,0.1)
ae.Shape = "Ball"
ae.Position = v3(999,999,999)
ae.BrickColor = bc("bright Blue")
ae.Material = "Neon"
ae.Transparency = 1
aaae =new("Weld",ae)
aaae.Part0 = torso
aaae.Part1 = ae
aaae.C0 = cf(0,7,0) * cfa(rad(0),rad(0),rad(0))
aaaae = new("ParticleEmitter",ae)
aaaae.Size = ns(15)
aaaae.Rate = 5
aaaae.Color = ColorSequence.new(Color3.fromRGB(231,255,111))
aaaae.ZOffset = -2
aaaae.Lifetime = nr(5)
aaaae.Transparency = ns(1)
aaaae.LockedToPart = true
aaaae.Speed = nr(0)


ad = new("Part",char)
ad.Name = "NewPart"
ad.Size = v3(10,0.1,10)
ad.CanCollide = false
ad.Anchored = true
ad.Position = torso.Position - v3(0,3,0)
ad.BrickColor = bc("bright Blue")
ad.Material = "Neon"
ad.Transparency = 1
aad = new("Decal",ad)
aad.Texture = "rbxassetid://110711859"
aad.Face = "Top"
aad.Transparency = 1
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--Functions
	function kamehameha()
		enabled = true
		
		
		kamefire.Volume = 5
		startkamehameha()
	wait(2)
	
	endkamehameha()
	a1 = new("Part",char)
a1.Name = "Beam"
a1.Anchored = true
a1.Size = v3(6,6,6)
a1.CanCollide = false
a1.Locked = true
a1.Position = v3(999,999,999)
a1.BrickColor = bc("Cyan")
a1.Material = "Neon"
a1.Transparency = 0
aa1 = new("SpecialMesh",a1)
aa1.MeshType = "Cylinder"
aa1.Scale = v3(1,1,1)

a2 = new("Part",char)
a2.Name = "Beam"
a2.Anchored = true
a2.Locked = true
a2.Size = v3(0.1,0.1,0.1)
a2.CanCollide = false
a2.Position = v3(999,999,999)
a2.BrickColor = bc("Cyan")
a2.Material = "Neon"
a2.Transparency = 0
aa2 = new("SpecialMesh",a2)
aa2.MeshType = "Sphere"
aa2.Scale = v3(150,100,100)
a3 = new("Part",char)
a3.Name = "Beam"
a3.Locked = true
a3.Anchored = true
a3.Size = v3(0.1,0.1,0.1)
a3.CanCollide = false
a3.Position = v3(999,999,999)
a3.BrickColor = bc("Cyan")
a3.Material = "Neon"
a3.Transparency = 0
aa3 = new("SpecialMesh",a3)
aa3.MeshType = "Sphere"
aa3.Scale = v3(200,100,100)
	kamecharge:Stop()
	kamefire:Play()
	hed.Anchored = true
	a8.Anchored = true
	ae.Anchored = true
	GroundWave1()
	startk = false


--Damages
-----------------------------------------------------------------------------------------
a1.Touched:connect(function(hit)
 
if hit.Parent:findFirstChild("NewPart") == nil and hit.Size.x < 500 and hit.Parent:findFirstChild("Wave") == nil and hit ~= a8 then
	
	

	if hit.Parent:IsA("Model") then
		hit.Parent:BreakJoints()
	end
	hit:Destroy()	
	if enabled  == true then
	enabled = false	
	num = num + 1
	kamehit:Play()
		a21 = new("Part",char)
a21.Name = "Beam"..num
a21.Locked = true
a21.Size = v3(1,1,1)
a21.CanCollide = false
a21.Position = v3(999,999,999)
a21.BrickColor = bc("Cyan")
a21.Material = "Neon"
a21.Transparency = 0
aa21 = new("SpecialMesh",a21)
a21.Anchored = true
a21.Position = hit.Position
aa21.MeshType = "Sphere"
aa21.Scale = v3(1,1,1)
GroundWave2()
GroundWave3()
GroundWave4()
	for i = 1,50 do
		wait()
		char["Beam"..num].Mesh.Scale = char["Beam"..num].Mesh.Scale + v3(5,5,5)
		char["Beam"..num].Transparency = char["Beam"..num].Transparency + 0.02
	end
	enabled = true
	char["Beam"..num]:Destroy()
	end
	
end

end)







beam2 = true
beam1 = true
wait(2)

beam1 = false

repeat
	wait()
	a1.Size = a1.Size - v3(0,0.2,0.2)
	aa2.Scale = aa2.Scale - v3(3,3,3)
	aa3.Scale = aa3.Scale - v3(3,3,3)
until
	a1.Size.y < 0.1
	
	beamgo = 2.2
	beamgo1 = 1
	a1:Destroy()
		a2:Destroy()
		a3:Destroy()
		for i = 1,10 do
			wait()
	
	kamefire.Volume = kamefire.Volume - 0.5
		end
		kamefire:Stop()
		
		hed.Anchored = false
		a8.Anchored = false
		ae.Anchored = false
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--RenderedStep
	rs:connect(function()
		--kamehameha
		------------------------------------------------------------------
		if startk == true then
		aaaa.Transparency = ns(0)
		aaaaw.Transparency = ns(0)
		aaaa.Size = ns(math.random(1,2))
		else
			aaaa.Transparency = ns(1)
			aaaaw.Transparency = ns(1)
		end
		
		if beam1 == true then
			beamgo = beamgo + 1
			beamgo1 = beamgo1 + 0.016
			a1.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo
			aa1.Scale = v3(1,math.random(1,1.2),math.random(1,1.2))
			a3.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo * 5
			a1.Size = a1.Size + v3(beamgo1,0,0)
			aa2.Scale = v3(150,math.random(100,120),math.random(100,120))
			aa3.Scale = v3(200,math.random(100,120),math.random(100,120))
			a2.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) - torso.CFrame.lookVector * 1
		end
		if beam2 == true then
			a1.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo
			a2.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * 8
				a3.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo * 1.93
		end
		-----------------------------------------------------------------------
		
		








if hum.MoveDirection.x == 0 then
if canidle == true then
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), .1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(105),math.rad(0),math.rad(0)), .1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(-20)),.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(-5)),.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)),.1)--leg
	end	
end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		
		if canwalk1 == true then	
		canwalk1 = false
for i = 1,10 do
	wait()
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .1)--head
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(0)), .1)--torso
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(5)), .1)--arm
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-5)), .1)--arm
	end
if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), .1)--leg
		end
		if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), .1)--leg
end
end
if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
for i = 1,10 do	
	wait()
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), .1)--head
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(0)), .1)--torso
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(5)), .1)--arm
	end
	if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-5)), .1)--arm
	end
if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), .1)--leg
	end
if hum.MoveDirection.x > 0 and canwalk == true or hum.MoveDirection.x < 0 and canwalk == true then
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), .1)--leg
end
end
end
canwalk1 = true
		end
		
	
	end	
	
	if block == true then
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.4)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.5,-0.7)*CFrame.Angles(math.rad(175),math.rad(0),math.rad(-10)), 0.4)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.8,0.5,-0.7)*CFrame.Angles(math.rad(175),math.rad(0),math.rad(10)), 0.4)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.4, -0.1, -0.7) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(2)), 0.4)--leg
	
	
	end
	--------------------------------------------------
	--Aura
	if onaura == true then
		onaura =false
		
	wait(0.1)
	aaaae.Texture = "rbxassetid://926705964"
	wait(0.1)
	aaaae.Texture = "rbxassetid://926709486"
	wait(0.1)
	aaaae.Texture = "rbxassetid://926711720"
	wait(0.1)
	aaaae.Texture = "rbxassetid://926712235"
	onaura =true
	end
	
	if transforming1 == true then
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(10)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(-10)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-5)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)--leg
		
	end
	
	if transforming2 == true then
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(15)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(-15)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.1)--leg
		
	end
	
	
	if transforming3 == true then
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(0)), 0.1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(-20),math.rad(10)), 0.1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(10),math.rad(-20),math.rad(-10)), 0.1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-5)), 0.1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(5)), 0.1)--leg
		
	end
	
	if beam3 == true then
			beamgo4 = beamgo4 + 1
			beamgo3 = beamgo3 + 0.018
			a1s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo4
			aa1s.Scale = v3(1,math.random(1,1.2),math.random(1,1.2))
			a3s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo4 * 5
			a1s.Size = a1s.Size + v3(beamgo3,0,0)
			aa2s.Scale = v3(200,math.random(150,170),math.random(150,170))
			aa3s.Scale = v3(250,math.random(150,170),math.random(150,170))
			a2s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) - torso.CFrame.lookVector * 1
		end
		if beam4 == true then
			a1s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo4
			a2s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * 8
				a3s.CFrame = torso.CFrame * CFrame.Angles(0,rad(90),0) + torso.CFrame.lookVector * beamgo4 * 1.93
		end
	
	
	end)
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--Kamehameha
	---------------------------------------------------------------------
	mouse.KeyDown:connect(function(key)
	if key == "q" then
		if canattack == true then
			canattack = false
			canidle = false
		canwalk = false
		kamehameha()
		canattack = true
		canwalk = true
		canidle = true
		end
		end
	end)
	------------------------------------------------------------------
	--Blocking
	----------------------------------------------------------------
	mouse.KeyDown:connect(function(key)
	if key == "r" then
		if canattack == true then
			canattack = false
		canidle = false
		canwalk = false
		
		block = true
		
		end
		end
	end)
	mouse.KeyUp:connect(function(key)
	if key == "r" then
		if canattack == false then
			canattack = true
		canidle = true
		block = false
		canwalk = true
		
		
		end
		end
	end)
	--------------------------------------------------------------------
	--Transformations
	--------------------------------------------------------------------
	mouse.KeyDown:connect(function(key)
	if key == "t" then
		if ssj1 == false then
		if canattack == true then
			canattack = false
		canidle = false
		canwalk = false
		ssj1 = true
		ssjmusic:Play()
		
		------------------------------------------------
		transforming1 = true
	
		wait(5)
		ssjauraburst:Play()
		GroundWave5()
		GroundWave6()
		GroundWave7()
		GroundWave8()
		GroundWave9()
		GroundWave10()
		ad.Position = torso.Position - v3(0,3,0)
		aad.Transparency = 0
		transforming1 = false
		transforming2 = true
		
		a8.Color = Color3.fromRGB(231,255,111)
		aaaae.Transparency = ns(0)
		ssjaura:Play()
		wait(3)
		transforming2 = false
		
		
		
		
		-------------------------------------------------
			canattack = true
		canidle = true
		canwalk = true
		for i = 1,20 do
					wait()
					aad.Transparency = aad.Transparency + 0.05
				end
		end
		else
			if canattack == true then
			
			canattack = false
		canidle = false
		canwalk = false
		ssj2 = true
			ssjmusic:Stop()
			ssj2music:Play()
			transforming3 = true
			wait(1)
			g1q = Instance.new("Part",char)
			g1q.Name = "Smoke"
			g1q.CanCollide = false
			g1q.Position = torso.Position - v3(-8,3,0)
			g1q.Size = v3(0.1,0.1,0.1)
			g1q.Anchored = true
			g1a = Instance.new("Part",char)
			g1a.Name = "Smoke"
			g1a.CanCollide = false
			g1a.Position = torso.Position + v3(8,80,0)
			g1a.Size = v3(0.1,0.1,0.1)
			g1a.Anchored = true
				g1q1 = Instance.new("Part",char)
			g1q1.Name = "Smoke"
			g1q1.CanCollide = false
			g1q1.Position = torso.Position - v3(-5,3,7)
			g1q1.Size = v3(0.1,0.1,0.1)
			g1q1.Anchored = true
			g1a1 = Instance.new("Part",char)
			g1a1.Name = "Smoke"
			g1a1.CanCollide = false
			g1a1.Position = torso.Position + v3(5,80,-7)
			g1a1.Size = v3(0.1,0.1,0.1)
			g1a1.Anchored = true
			g1q2 = Instance.new("Part",char)
			g1q2.Name = "Smoke"
			g1q2.CanCollide = false
			g1q2.Position = torso.Position - v3(12,3,-6)
			g1q2.Size = v3(0.1,0.1,0.1)
			g1q2.Anchored = true
			g1a2 = Instance.new("Part",char)
			g1a2.Name = "Smoke"
			g1a2.CanCollide = false
			g1a2.Position = torso.Position + v3(-12,80,6)
			g1a2.Size = v3(0.1,0.1,0.1)
			g1a2.Anchored = true
			
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
Lightning:Play()
Lightning1(g1a.Position,g1q.Position,0.2,10,workspace)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(2)
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
Lightning:Play()
Lightning1(g1a1.Position,g1q1.Position,0.2,10,workspace)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(1)
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
Lightning:Play()
Lightning1(g1a2.Position,g1q2.Position,0.2,10,workspace)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(0)
game.Lighting.Brightness = 9999999
wait(0)
game.Lighting.Brightness = 0
wait(1)

			
			
			
			wait(1)
			ad.Position = torso.Position - v3(0,3,0)
			ad.Size = v3(30,0.1,30)	
		aad.Transparency = 0
		aad.Texture = "http://www.roblox.com/asset/?id=108186785"
			ssjauraburst:Play()
			
			
			aaa8.C0 = cf(0,.8,.3) * cfa(rad(0),rad(0),rad(0))
aa8.Scale = v3(7,7,7)
aa8.MeshId = "rbxassetid://560186510"
ssjaura:Stop()
ssj2aura:Play()
ssj2ele = Instance.new("ParticleEmitter",torso)
ssj2ele.LockedToPart = true
	ssj2ele.Size = ns(2.4)
	ssj2ele.Rate = 5
	ssj2ele.Speed = nr(0)
	ssj2ele.Lifetime = nr(0.5)
	ssj2ele.ZOffset = 2
	ssj2ele.Texture = "rbxassetid://347745038"		
			
			g1 = Instance.new("Part",char)
			g1.Name = "Smoke"
			g1.CanCollide = false
			g1.Position = torso.Position - v3(0,2,0)
			g1.Size = v3(0.1,0.1,0.1)
			g1.Anchored = true
			g11 = Instance.new("ParticleEmitter",g1)
			g11.Size = ns(3)
			g11.EmissionDirection = "Front"
			g11.Texture = "rbxassetid://572153134"
			g11.Rate = 40
			g11.Speed = nr(20)
			g112 = Instance.new("ParticleEmitter",g1)
			g112.Size = ns(3)
			g112.EmissionDirection = "Back"
			g112.Texture = "rbxassetid://572153134"
			g112.Rate = 40
			g112.Speed = nr(20)
			g113 = Instance.new("ParticleEmitter",g1)
			g113.Size = ns(3)
			g113.EmissionDirection = "Left"
			g113.Texture = "rbxassetid://572153134"
			g113.Rate = 40
			g113.Speed = nr(20)
			g114 = Instance.new("ParticleEmitter",g1)
			g114.Size = ns(3)
			g114.EmissionDirection = "Right"
			g114.Texture = "rbxassetid://572153134"
			g114.Rate = 40
			g114.Speed = nr(20)
			g2 = Instance.new("Part",char)
			g2.Name = "Smoke"
			g2.CanCollide = false
			g2.CFrame = CFrame.new(torso.Position - v3(0,2,0))*CFrame.Angles(rad(0),rad(45),rad(0)) 
			g2.Size = v3(0.1,0.1,0.1)
			g2.Anchored = true
			g11 = Instance.new("ParticleEmitter",g2)
			g11.Size = ns(3)
			g11.EmissionDirection = "Front"
			g11.Texture = "rbxassetid://572153134"
			g11.Rate = 40
			g11.Speed = nr(20)
			g112 = Instance.new("ParticleEmitter",g2)
			g112.Size = ns(3)
			g112.EmissionDirection = "Back"
			g112.Texture = "rbxassetid://572153134"
			g112.Rate = 40
			g112.Speed = nr(20)
			g113 = Instance.new("ParticleEmitter",g2)
			g113.Size = ns(3)
			g113.EmissionDirection = "Left"
			g113.Texture = "rbxassetid://572153134"
			g113.Rate = 40
			g113.Speed = nr(20)
			g114 = Instance.new("ParticleEmitter",g2)
			g114.Size = ns(3)
			g114.EmissionDirection = "Right"
			g114.Texture = "rbxassetid://572153134"
			g114.Rate = 40
			g114.Speed = nr(20)
			
			
			a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = torso.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
GroundWave5()
		GroundWave6()
		GroundWave7()
		GroundWave8()
		GroundWave9()
		GroundWave10()
		for i = 1,50 do
		wait()
		aa21e.Scale = aa21e.Scale + v3(5,5,5)
		a21e.Transparency = a21e.Transparency + 0.02
	end	
		
			wait(2)
			g1.Position = v3(999,999,999)
			g2.Position = v3(999,999,999)
			transforming3 = false
			canattack = true
		canidle = true
		canwalk = true
		
				wait(5)
				for i = 1,20 do
					wait()
					aad.Transparency = aad.Transparency + 0.05
				end
				g1:Destroy()
		g2:Destroy()
			
			
			
			
		end	
		end
		end
	end)
	--Lightning
	
	function Lightning1(pos,pos2,radius,numParts,model)
        radius = radius or 0.2
        numParts = numParts or 10
        model = model or workspace
        local lv = CFrame.new(pos,pos2).lookVector
        local dist = (pos-pos2).magnitude
        local dbp = dist/numParts
        local last = pos
        for i = 1,numParts do
                local p = Instance.new("Part",model)
                p.FormFactor = "Symmetric"
                p.Size = Vector3.new(5,5,1)
                p.Material = "Neon"
                p.CanCollide = false
                p.Anchored = true
                p.BrickColor = BrickColor.new("Cyan")
                local x = math.random(-100,100)/100*dbp/2
                local y = math.random(-100,100)/100*dbp/2
                local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
                local dist2 = (p2.p-last).magnitude
                local mid = (p2.p+last)/2
                local m = Instance.new("BlockMesh",p)
                m.Scale = Vector3.new(radius,radius,dist2)
                p.CFrame = CFrame.new(mid,p2.p)
                last = p2.p
                game:GetService("Debris"):AddItem(p,math.random(40,100)/1000)
        end
end
	----------------------------------------------------------------------------------------------
	ac = new("Part",char)
ac.Name = "NewPart"
ac.Size = v3(0.1,0.1,0.1)
ac.Position = v3(999,999,999)
ac.BrickColor = bc("bright Blue")
ac.Material = "Neon"
ac.Transparency = 1
aaac =new("Weld",ac)
aaac.Part0 = rarm
aaac.Part1 = ac
aaac.C0 = cf(0,-1.5,0) * cfa(rad(0),rad(0),rad(0))
aaaac = new("ParticleEmitter",ac)
aaaac.Size = ns(1)
aaaac.Rate = 5
aaaac.Texture = "rbxassetid://246381828"
aaaac.ZOffset = 1
aaaac.Lifetime = nr(5)
aaaac.Transparency = ns(1)
aaaac.LockedToPart = true
aaaac.Speed = nr(0)
aaaawc = new("ParticleEmitter",ac)
aaaawc.Size = ns(5)
aaaawc.Rate = 5
aaaawc.Color = ColorSequence.new(Color3.fromRGB(149,190,255))
aaaawc.Texture = "rbxassetid://924710961"
aaaawc.ZOffset = -1
aaaawc.Lifetime = nr(5)
aaaawc.RotSpeed = nr(50)
aaaawc.Transparency = ns(1)
aaaawc.LockedToPart = true
aaaawc.Speed = nr(0)
	mouse.KeyDown:connect(function(key)
	if key == "z" then
		
		if canattack == true then
			canattack = false
			canidle = false
		canwalk = false
		ssj2music.Volume = 0
		fahersonstart:Play()
		fatherson()
		wait(1)
		for i = 1,20 do
			wait()
			trans = trans - 0.05
		aaaac.Transparency = ns(trans)
		aaaawc.Transparency = ns(trans)
		end
		wait(3)
		fahersonend:Play()
		fathersonfire()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.1,0.7,-0.5)*CFrame.Angles(math.rad(95),math.rad(-10),math.rad(-30)), 1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.1,0.3,-0.5)*CFrame.Angles(math.rad(75),math.rad(10),math.rad(30)), 1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-10)), 1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 1)--leg

char.Archivable = true
c = char:Clone()
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 1)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)--torso
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-0.3)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 1)--arm
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10)), 1)--arm
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 1)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 1)--leg
c.Parent = char
c.Name = "Goku"
okko = Instance.new("Weld",c)
	okko.Part0 = torso
	okko.Part1 = c.Torso
okko.C0 = CFrame.new(2.5,0,0)
	Hair99 = Instance.new("Part")
umok = Instance.new("Part",c)
umok.Name = "canthurt"
umok.Position = v3(999,999,999)
Hair99.Parent = c
Hair99.Name = "Hair"
Hair99.formFactor = "Symmetric"
Hair99.Size = Vector3.new(1, 1, 1)
Hair99.CFrame = c.Head.CFrame
Hair99:BreakJoints()
Hair99.CanCollide = false
Hair99.TopSurface = "Smooth"
Hair99.BottomSurface = "Smooth"
Hair99.BrickColor = BrickColor.new("New Yeller")
Hair99.Transparency = 1

Weld = Instance.new("Weld") 
Weld.Part0 = c.Head 
Weld.Part1 = Hair99
Weld.Parent = c.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.06)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

Hair7 = Instance.new("Part")
Hair7.Parent = c
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Really black")
Hair7.CFrame = c.Torso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0

Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair99
Mesh.MeshType = "Sphere"
Mesh.Offset = Vector3.new(0, 0.1, 0.1)
Mesh.Scale = Vector3.new(1.2, 1.2, 1.2)


Weld1 = Instance.new("Weld")
Weld1.Parent = c.Head
Weld1.Part0 = c.Head
Weld1.Part1 = Hair7
Weld1.C0 = CFrame.new(0, 1, 0)

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0.2, -0.2, 0.2)
Mesh.Parent = Hair7
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=476757756"
Mesh.TextureId = ""

wait(0.1)
for i,v in pairs(c:GetChildren()) do
	if v.Name == "NewPart" then
		v:Destroy()
	end
	if v:IsA("Part") then
		v.CanCollide = false
		v.Anchored = true
		v.BrickColor = BrickColor.new("Cyan")
		v.Transparency = 0.5
	end
end
c["Sound Folder"]:Destroy()
c.Hair:Destroy()
	c.Shirt:Destroy()
	c.Pants:Destroy()
		
		
		
		
		
		
		
		
		
		hed.Anchored = true
	a8.Anchored = true
	ae.Anchored = true
		
		
	
	GroundWave1()
	
	
	a1s = new("Part",char)
a1s.Name = "Beam"
a1s.Anchored = true
a1s.Size = v3(6,15,15)
a1s.CanCollide = false
a1s.Locked = true
a1s.Position = v3(999,999,999)
a1s.BrickColor = bc("Cyan")
a1s.Material = "Neon"
a1s.Transparency = 0
aa1s = new("SpecialMesh",a1s)
aa1s.MeshType = "Cylinder"
aa1s.Scale = v3(1,1,1)
aaaac.Transparency = ns(1)
		aaaawc.Transparency = ns(1)
a2s = new("Part",char)
a2s.Name = "Beam"
a2s.Anchored = true
a2s.Locked = true
a2s.Size = v3(0.1,0.1,0.1)
a2s.CanCollide = false
a2s.Position = v3(999,999,999)
a2s.BrickColor = bc("Cyan")
a2s.Material = "Neon"
a2s.Transparency = 0
aa2s = new("SpecialMesh",a2s)
aa2s.MeshType = "Sphere"
aa2s.Scale = v3(200,150,150)
a3s = new("Part",char)
a3s.Name = "Beam"
a3s.Locked = true
a3s.Anchored = true
a3s.Size = v3(0.1,0.1,0.1)
a3s.CanCollide = false
a3s.Position = v3(999,999,999)
a3s.BrickColor = bc("Cyan")
a3s.Material = "Neon"
a3s.Transparency = 0
aa3s = new("SpecialMesh",a3s)
aa3s.MeshType = "Sphere"
aa3s.Scale = v3(250,150,150)
--Damages
-----------------------------------------------------------------------------------------
a1s.Touched:connect(function(hit)
 
if hit.Parent:findFirstChild("NewPart") == nil and hit.Size.x < 500 and hit.Parent:findFirstChild("Wave") == nil and hit ~= a8 and hit ~= Hair7 and hit ~= Hair99 and hit.Parent:findFirstChild("canthurt") == nil then
	
	

	if hit.Parent:IsA("Model") then
		hit.Parent:BreakJoints()
	end
	hit:Destroy()	
	if enabled  == true then
	enabled = false	
	num = num + 1
	kamehit:Play()
		a21 = new("Part",char)
a21.Name = "Beam"..num
a21.Locked = true
a21.Size = v3(1,1,1)
a21.CanCollide = false
a21.Position = v3(999,999,999)
a21.BrickColor = bc("Cyan")
a21.Material = "Neon"
a21.Transparency = 0
aa21 = new("SpecialMesh",a21)
a21.Anchored = true
a21.Position = hit.Position
aa21.MeshType = "Sphere"
aa21.Scale = v3(1,1,1)
GroundWave2()
GroundWave3()
GroundWave4()
	for i = 1,50 do
		wait()
		char["Beam"..num].Mesh.Scale = char["Beam"..num].Mesh.Scale + v3(5,5,5)
		char["Beam"..num].Transparency = char["Beam"..num].Transparency + 0.02
	end
	enabled = true
	char["Beam"..num]:Destroy()
	end
	
end

end)







beam3 = true
beam4 = true
wait(2)

beam3 = false

repeat
	wait()
	a1s.Size = a1s.Size - v3(0,0.2,0.2)
	aa2s.Scale = aa2s.Scale - v3(2,2,2)
	aa3s.Scale = aa3s.Scale - v3(2,2,2)
until
	a1s.Size.y < 0.1
	
	beamgo = 2.2
	beamgo1 = 1
	a1s:Destroy()
		a2s:Destroy()
		a3s:Destroy()
		for i = 1,10 do
			wait()
	
	kamefire.Volume = kamefire.Volume - 0.5
		end
		kamefire:Stop()
		
		
		
		
		
		
		
		
		
		
		
		wait(1)
		torso.Anchored = false
		hed.Anchored = false
		c:Destroy()
		beamgo4 = 2.2
beamgo3 = 1
		canattack = true
		canwalk = true
		canidle = true
		
	a8.Anchored = false
	ae.Anchored =false
	trans = 1
	for i = 1,10 do
		wait()
		ssj2music.Volume = ssj2music.Volume + 1
	end
		end
		end

	end)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	mouse.KeyDown:connect(function(key)
	if key == "e" then
		if canattack == true then
			if punched1 == true then
				punched1 = false
				punched3 = false
				punched4 = false
				canidle = false
				canwalk= false
				
				firsthit()
				canidle = true
				canwalk= true
				punched2 = true
			end
		end
	end
	end)
	mouse.KeyDown:connect(function(key)
	if key == "e" then
		if canattack == true then
			if punched2 == true then
				punched2 = false
				punched4 = false
				punched1 = false
				canidle = false
				canwalk= false
				
				secondhit()
				canidle = true
				canwalk= true
				punched3 = true
			end
		end
	end
	end)
	mouse.KeyDown:connect(function(key)
	if key == "e" then
		if canattack == true then
			if punched3 == true then
				punched3 = false
				punched2 = false
				punched1 = false
				canidle = false
				canwalk= false
				
				thirdhit()
				canidle = true
				canwalk= true
				punched4 = true
			end
		end
	end
	end)
	mouse.KeyDown:connect(function(key)
	if key == "e" then
		if canattack == true then
			if punched4 == true then
				punched4 = false
				punched2 = false
				punched3 = false
				canidle = false
				canwalk= false
				
				lasthit()
				canidle = true
				canwalk= true
				punched1 = true
			end
		end
	end
	end)