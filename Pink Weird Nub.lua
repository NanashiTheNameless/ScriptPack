function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end

local speed = 0.15
local angle = 0
local anglespeed = 1.5
local armspeed = 0.15
local armangle = 0
local armanglespeed = 1.5
local legspeed = 0.15
local legangle = 0
local leganglespeed = 1.5
ignore = {}
on = true
damen = true
enabled = true
combo = 1
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
Char = Player.Character
if Char["Body Colors"] ~= nil then
	Char["Body Colors"]:Destroy()
end
wait(0.1)
if Char:FindFirstChild("Animate") ~= nil then Char.Animate:Destroy() end
for i,v in pairs(Char:GetChildren()) do
	if v.ClassName == "Hat" then
		v:Destroy()
	end
	if v.ClassName == "Shirt" then
		v:Destroy()
	end
	if v.ClassName == "Pants" then
		v:Destroy()
	end
	if v.ClassName == "ShirtGraphic" then
		v:Destroy()
	end
	if v.ClassName == "CharacterMesh" then
		v:Destroy()
	end
	if v.Name == "Torso" or v.Name == "Left Arm" or v.Name == "Right Arm" or v.Name == "Left Leg" or v.Name == "Right Leg" then
		v.BrickColor = BrickColor.new("Pink")
		m = Instance.new("SpecialMesh",v)
	end
end
Char.Torso.Mesh.Scale = Vector3.new(1.4,1.25,2.5)
Char.Torso.Mesh.Offset = Vector3.new(0,0,-0.5)
Char.Torso.Mesh.MeshType = "Sphere"
Human = Char.Humanoid
if Human:FindFirstChild("Animator") ~= nil then Human.Animator:Destroy() end
Sounds = {"rbxassetid://341648581","rbxassetid://288641333"}
Head = Char.Head
Head.Transparency = 1
Head.face:Destroy()
p = Instance.new("Part",Char)
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = 0.5
p.Size = Head.Size
p.BrickColor = BrickColor.new("Pink")
w = Instance.new("Weld",p)
w.Part0 = Head
w.Part1 = p
m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1.15,1,1.15)
m.MeshId = "http://www.roblox.com/asset/?id=33366461"
Instance.new("Decal",Head).Texture = "rbxassetid://434049954"
LA = Char:findFirstChild("Left Arm")
RA = Char:findFirstChild("Right Arm")
LL = Char:findFirstChild("Left Leg")
RL = Char:findFirstChild("Right Leg")
T = Char:findFirstChild("Torso")
LS = T:findFirstChild("Left Shoulder")
RS = T:findFirstChild("Right Shoulder")
LH = T:findFirstChild("Left Hip")
RH = T:findFirstChild("Right Hip")
Neck = T:findFirstChild("Neck")
HM = Char:findFirstChild("HumanoidRootPart")
RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
WLS = Instance.new("Weld", T)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
WRS = Instance.new("Weld", T)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
WLH = LH
WRH = RH
LSC0 = WLS.C0
RSC0 = WRS.C0
LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
WRJ = RJ
RJC0 = WRJ.C0
RJC1 = WRJ.C1
NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Run = game:GetService("RunService")
Human.MaxHealth = 1000000
wait(0.1)
Human.Health = Human.MaxHealth

Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
}

function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function getmesh(mesh)
	return "rbxassetid://"..mesh
end

function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			wait(1/60)
		end
		p:Destroy()
	end)()
	return p
end

PlaySound = function(part,volume,pitch,id,looped)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	coroutine.wrap(function()
		wait()
		Sound:Play()
		if looped == nil and Sound.SoundId ~= Sounds[2] then
			game.Debris:AddItem(Sound,10)
		end
	end)()
	if looped == true then
		Sound.Looped = true
		ThisSound = Sound
	end
end
PlaySound(Head,0.5,1,Sounds[1],true)

function GetDistance(Obj,Mag)
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= Char then
			local Mag2 = (v.Torso.Position - Obj.Position).magnitude
			if Mag2 < Mag then
				return v
			end
		end
	end
end

function Die(touched)
	if touched.Parent ~= nil and touched.Parent ~= Char and touched.Parent:FindFirstChild("Head") ~= nil and touched.Parent:FindFirstChild("Humanoid") ~= nil then
		PlaySound(touched.Parent.Head,0.1,0.9,Sounds[2],true)
		touched:Destroy()
	end
end

function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

keys = mouse.KeyDown:connect(function(key)
	if key == "q" then
		game:GetService("Chat"):Chat(Char,"who wants to gnaw on human bones")
	end
	if key == "e" then
		game:GetService("Chat"):Chat(Char,"can i gnaw your human bones")
	end
	if key == "r" then
		game:GetService("Chat"):Chat(Char,"hello")
	end
	if key == "t" then
		game:GetService("Chat"):Chat(Char,"would you like to gnaw some human bones sir/madam")
	end
	if key == "y" then
		game:GetService("Chat"):Chat(Char,"walking in the fields over here")
	end
	if key == "u" then
		game:GetService("Chat"):Chat(Char,"im hungry",2)
	end
	if key == "p" then
		game:GetService("Chat"):Chat(Char,"nom",2)
	end
	if key == "z" then
		game:GetService("Chat"):Chat(Char,"no")
	end
	if key == "x" then
		game:GetService("Chat"):Chat(Char,"yes")
	end
	if key == "c" then
		game:GetService("Chat"):Chat(Char,"https://www.youtube.com/watch?v=jdRCNM2k42o")
	end
	if key == "f" and enabled == true then
		enabled = false
		game:GetService("Chat"):Chat(Char,"gnaw time",2)
		Head.Decal.Texture = "rbxassetid://449278124"
		Human.WalkSpeed = 50
		po = Head.Touched:connect(Die)
		legspeed = 1
		for i = 1,80 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-HM.RotVelocity.Y/20),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,HM.RotVelocity.Y/12),speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*2),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*2),legspeed)
			end
			Rwait()
		end
		legspeed = 0.15
		Human.WalkSpeed = 16
		Head.Decal.Texture = "rbxassetid://434049954"
		po:disconnect()
		enabled = true
	end
end)

function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end 

while true do
	surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/8),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25/2)*0.25/5,0,0),speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.sin(armangle)*2,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.sin(armangle)*2,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.sin(legangle)*2),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.sin(legangle)*2),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-HM.RotVelocity.Y/20),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,HM.RotVelocity.Y/12),speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.5,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/1.5,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(1,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed)
			Rwait()
		end
		if HM.Velocity.Y <= -5 and enabled == true and surface == nil then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/3,0,0),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/3,0,0),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/8,0,0),speed)
			lerp(Neck,Neck.C0,NC0,speed)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			action = "Walk"
		end
	end
	Rwait()
end