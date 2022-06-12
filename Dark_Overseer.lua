--	// FileName: Dark Overseer.lua
--	// Written by: Jamie_1
--	// Description: N/A
--  	// Apart of the Chromium Weaponry, circa 2017

local player = game:GetService("Players").LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local Hood = true
local hum = char.Humanoid
local skincolor= BrickColor.new"Really black" --that doesnt sound right 
local RootPart = char:WaitForChild("HumanoidRootPart")
local rad = math.rad
local huge = math.huge
local rand = math.random
local Vec = Vector3.new
local Cf = CFrame.new
local Euler = CFrame.fromEulerAnglesXYZ
local BC = BrickColor.new
local Col3 = Color3.new
local Inst = Instance.new
local Ud2 = UDim2.new
local RootPart = char:WaitForChild("HumanoidRootPart")
local RootJoint = RootPart:WaitForChild("RootJoint")
local runServ = game:GetService("RunService")

wait(2)
char["Body Colors"].HeadColor = skincolor
char["Body Colors"].LeftArmColor = skincolor
char["Body Colors"].LeftLegColor = skincolor
char["Body Colors"].RightArmColor = skincolor
char["Body Colors"].RightLegColor = skincolor
char["Body Colors"].TorsoColor = skincolor

Shirt = Instance.new("Shirt",char)
	Shirt.Parent = char
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=98045742"
	
Pant = Instance.new("Pants",char)
	Pant.Parent = char
	Pant.PantsTemplate = "http://www.roblox.com/asset/?id=83181745"
	
lite = Instance.new("PointLight")
	lite.Parent = char.Torso
	lite.Brightness = 100
	lite.Range = 8
	lite.Color = Color3.new(1,1,1)

local cf = CFrame.new(0, 0, -3) * CFrame.Angles(math.rad(180), 0, 0)
local chatServ = game:GetService("Chat")
local runServ = game:GetService("RunService")
local debServ = game:GetService("Debris")
local FONT = "SourceSans"

function MakeText(text, font, duration, tcr, tcg, tcb, scr, scg, scb, cFrame)
	local tpart = Instance.new("Part")
	tpart.Parent = char
	tpart.Transparency = 1
	tpart.Name = "hoihoi"
	tpart.Anchored = true
	tpart.CanCollide = false
	tpart.Locked = true
	tpart.Size = Vector3.new(.2,.2,.2)
	tpart.CFrame = cFrame*CFrame.new(math.random(-2,2),0,math.random(-2,2))
	local bill = Instance.new("BillboardGui")
	bill.Parent = tpart
	bill.AlwaysOnTop = true
	bill.Name = "bilb"
	bill.Size = UDim2.new(4, 0, 4, 0)
	bill.StudsOffset = Vector3.new(0, 1, 0)
	local counter = 0
	local textl = Instance.new("TextLabel")
	textl.Parent = bill
	textl.Name = "bilb2"
	textl.BackgroundTransparency = 1
	textl.Size = UDim2.new(1, 0, 1, 0)
	textl.Font = font
	textl.Text = text
	textl.TextColor3 = Color3.new(tcr/255, tcg/255, tcb/255)
	textl.TextScaled = true
	textl.TextStrokeColor3 = Color3.new(scr/255, scg/255, scb/255)
	textl.TextStrokeTransparency = 0
	coroutine.resume(coroutine.create(function()
		while textl.TextTransparency < 1 do
			wait()
			if bill.StudsOffset.Y >= 5 then
				if counter >= duration then
					textl.TextTransparency = textl.TextTransparency+.15
					textl.TextStrokeTransparency = textl.TextStrokeTransparency+.15
				else
					counter = counter+.1
				end
			else
				bill.StudsOffset = Vec(0, bill.StudsOffset.Y+.15, 0)
			end
		end
		debServ:AddItem(bill, 0)
		debServ:AddItem(textl, 0)
		debServ:AddItem(tpart, 0)
	end))
end

local r = Instance.new("Part", char)
      r.Transparency = 1
      r.CanCollide = false
      r.Name = "Circle"
      r.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0)
      r.Size = Vector3.new(10, 1, 10)
      r.Anchored = true
      local c = Instance.new("Decal", r)
      c.Face = "Top"
      c.Texture = "http://www.roblox.com/asset/?id=131155455"
      orb = r
      wait()
      r.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0)
local pos = 0
   game:GetService("RunService").RenderStepped:connect(function()
    orb.CFrame = char.Torso.CFrame * CFrame.new(0, -1.7, 0) * CFrame.fromEulerAnglesXYZ(0, pos, 0)
pos = pos + 0.05
end)

local Player = game:GetService("Players").LocalPlayer
repeat wait(1) until Player.Character
local Character = Player.Character
Character.Animate.Disabled = true
local la = Character:FindFirstChild("Left Arm")
local ra = Character:FindFirstChild("Right Arm")
local ll = Character:FindFirstChild("Left Leg")
local rl = Character:FindFirstChild("Right Leg")
local Torso = Character:FindFirstChild("Torso")

--[[z = Instance.new("Sound", Torso)
z.SoundId = "rbxassetid://566055038" -- test
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
]]--

local Humanoid = Character:findFirstChild("Humanoid")
local Mouse = Player:GetMouse()
Character.Animate.Disabled = true
Character.Sound:Destroy()
Humanoid.Animator:Destroy()

local LimbAccess = {LA=true,RA=true,LL=true,RL=true,RJ=true,NJ=true,Weapon=true}
local State = "Flying"
local Active = true
local Mode = "Flying"
function Lerp(a,b,i)  -- A = First pos, B = Second Pos, i = Speed
	return a:lerp(b,i)
end
Left_Arm = Instance.new("Weld",Torso)
Left_Arm.Part0 = Torso
Left_Arm.Part1 = la
Left_Arm.Name = "LeftArmJ"
Left_Arm.C0 = CFrame.new(-1.5,0.5,0)
Left_Arm.C1 = CFrame.new(0,0.5,0)
Right_Arm = Instance.new("Weld",Torso)
Right_Arm.Part0 = Torso
Right_Arm.Part1 = ra
Right_Arm.Name = "RightArmJ"
Right_Arm.C0 = CFrame.new(1.5,0.5,0)
Right_Arm.C1 = CFrame.new(0,0.5,0)
Left_Leg = Instance.new("Weld",Torso)
Left_Leg.Part0 = Torso
Left_Leg.Part1 = ll
Left_Leg.Name = "LeftLegJ"
Left_Leg.C0 = CFrame.new(-0.5,-1,0)
Left_Leg.C1 = CFrame.new(0,1,0)
Right_Leg = Instance.new("Weld",Torso)
Right_Leg.Name = "RightLegJ"
Right_Leg.Part0 = Torso
Right_Leg.Part1 = rl
Right_Leg.C0 = CFrame.new(0.5,-1,0)
Right_Leg.C1 = CFrame.new(0,1,0)
Staffw = Instance.new("Weld",Torso)
Staffw.Part0 = Torso
Staffw.Part1 = Torso
Staffw.Name = "StaffJoint"

local RootJoint = Instance.new("Weld",Character["HumanoidRootPart"])
RootJoint.Name = "RootJ"
RootJoint.Part0 = Character["HumanoidRootPart"]
RootJoint.Part1 = Torso

local NeckJ = Instance.new("Weld",Torso)
NeckJ.Name = "NeckJ"
NeckJ.Part0 = Torso
NeckJ.Part1 = Character.Head
NeckJ.C1 = CFrame.new(0,-1.5,0)
Player.Character.Humanoid.Died:connect(function()
_G.ConnectionAgent:disconnect()
end)

angle = 0
angle2 = 0
angle3 = 0
anglespeed = 2
anglespeed2 = 1
anglespeed3 = .4
game:GetService("RunService").Stepped:connect(function()
	angle = ((angle % 100) + anglespeed/10)
	angle2 = ((angle2 % 100) + anglespeed2/10)
	angle3 = ((angle3 % 100) + anglespeed3/10) --it'll go from 0 to 100 and repeat in a loop. basically it will get to its destination and back --ok
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Flying" then -- idle
		if not Humanoid.WalkSpeed == 50 then
			Humanoid.WalkSpeed = 50
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(90),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.2,0.35,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(0)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(-45)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-5)+math.sin(angle3)*.06),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(35)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(45)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-1,0),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,-.4)*CFrame.Angles(math.rad(180),math.rad(180),0),.2)
		end
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Flying" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(90),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.2,0.35,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(7)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(-45)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-5)+math.sin(angle3)*.06),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(35)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(45)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-1,0),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,-.4)*CFrame.Angles(math.rad(180),math.rad(180),0),.2)
		end	
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Lounge" then -- idle
		if not Humanoid.WalkSpeed == 30 then
			Humanoid.WalkSpeed = 30
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,0,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-3)+math.sin(angle3)*.06),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(5)+(math.sin(angle3)*.1),math.rad(0),math.rad(3)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,-1,0)*CFrame.Angles(0,0,math.rad(-5)+math.sin(angle3)*.02),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,-1,0)*CFrame.Angles(0,0,math.rad(15)+math.sin(angle3)*-.02),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,0,.5),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(-45)),.2)
		end
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Lounge" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.2,math.sin(angle2)*.1,0)*CFrame.Angles(0,math.rad(0),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-23)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(5)+(math.sin(angle3)*.1),math.rad(0),math.rad(23)),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,0,.5),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(-45)),.2)
		end				
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Battle" then -- idle
		if not Humanoid.WalkSpeed == 20 then
			Humanoid.WalkSpeed = 20
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.1,0.5,-.7)*CFrame.Angles(math.rad(5),math.rad(-135),math.rad(-90)),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.1,0.5,-.7)*CFrame.Angles(math.rad(5),math.rad(135),math.rad(90)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,-1,0)*CFrame.Angles(0,0,math.rad(-5)+math.sin(angle3)*.02),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,-1,0)*CFrame.Angles(0,0,math.rad(5)+math.sin(angle3)*-.02),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-.5,-1),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,.6,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(-90)),.2)
		end	
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Battle" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.2,.5+math.sin(angle2)*.1,0)*CFrame.Angles(0,math.rad(0),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-.9,0.6,-.8)*CFrame.Angles(math.rad(5),math.rad(-135),math.rad(-90)),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.1,0.4,-.3)*CFrame.Angles(math.rad(5),math.rad(135),math.rad(90)),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.7,-.2)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(.4,.5,-1),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,.1,0)*CFrame.Angles(math.rad(135),math.rad(120),math.rad(-135)),.2)
		end	
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Changing" then -- idle
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.3,0.51,-.7)*CFrame.Angles(math.rad(5),math.rad(-165),math.rad(-90)),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.3,0.49,-.7)*CFrame.Angles(math.rad(5),math.rad(165),math.rad(90)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-1,-1,-.4)*CFrame.Angles(0,math.rad(25),math.rad(75)),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(1,-1,-.4)*CFrame.Angles(0,math.rad(-25),math.rad(-75)),.1)
		end				
	end
end)

Mesh2 = function(par, num, x, y, z)
  
  local msh = _
  if num == 1 then
    msh = Instance.new("CylinderMesh", par)
  else
    if num == 2 then
      msh = Instance.new("SpecialMesh", par)
      msh.MeshType = 3
    else
      if num == 3 then
        msh = Instance.new("BlockMesh", par)
      else
        if num == 4 then
          msh = Instance.new("SpecialMesh", par)
          msh.MeshType = "Torso"
        else
          if type(num) == "string" then
            msh = Instance.new("SpecialMesh", par)
            msh.MeshId = num
          end
        end
      end
    end
  end
  msh.Scale = Vector3.new(x, y, z)
  return msh
end

local GodMode = true
local OP_HEALTH = runServ.RenderStepped:connect(function()
	if GodMode and RootJoint.Parent ~= nil then
		hum.MaxHealth = huge
		hum.Health = huge
		hum.MaxHealth = huge
		hum.Health = huge
		wait()
		hum.MaxHealth = huge
		hum.Health = huge
		hum.MaxHealth = huge
		hum.Health = huge
		if hum.Health == 0 then
			MakeText("I failed my master..", FONT, 1, 255, 0, 0, 0, 0, 0, char.Head.CFrame)
		end
	end
end)


Weld2 = function(p0, p1, x, y, z, rx, ry, rz, par)
  
  local w = Instance.new("Motor", par or p0)
  w.Part0 = p0
  w.Part1 = p1
  w.C1 = CFrame.new(x, y, z) * CFrame.Angles(rx, ry, rz)
  return w
end

NoOutline = function(Part)
  
  Part.TopSurface = 10
end

part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  
  local fp = Instance.new("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end

local vt = Vector3.new

for i,v in pairs(player.Character.Head:GetChildren()) do
    if v:IsA("Sound") then
      v:Destroy()
    end
  end

if Hood == true then
  for _,v in pairs(char:GetChildren()) do
    if v.ClassName == "Hat" or v.ClassName == "Accessory" then
      --v:remove()
		v.Handle.Transparency = 1
  local hat = part(3, char, 0, 0, BrickColor.new("Really black"), "Hood", vt(0.5, 1, 1.02))
  Mesh2(hat, "http://www.roblox.com/asset/?id=16952952", 1.05, 1.05, 1.05)
  Weld2(char.Head, hat, 0, -0.25, 0, 0, 0, 0, hat)
end
end
end

--[[Magic Change]]--
mouse.KeyDown:connect(function(key)
    if key == "l" then
	r.Decal.Texture = "rbxassetid://564602277"
	MakeText("Magic Change!", FONT, .3, 255, 0, 0, 0, 0, 0, char.Head.CFrame) --help
	wait(3)
end
end)

mouse.KeyDown:connect(function(key)
    if key == "i" then
	r.Decal.Texture = "rbxassetid://131155455"
end
end)

--551749770

mouse.KeyDown:connect(function(key)
    if key == "o" then
	r.Decal.Texture = "rbxassetid://127950951"
end
end)

mouse.KeyDown:connect(function(key)
	if key == "p" then
	MakeText("Disappear!", FONT, .3, 255, 0, 0, 0, 0, 0, char.Head.CFrame) 
	r.Decal.Transparency = 0.050
	wait(0.1)
	r.Decal.Transparency = 0.1
	wait(0.1)
	r.Decal.Transparency = 0.15
	wait(0.1)
	r.Decal.Transparency = 0.2
	wait(0.1)
	r.Decal.Transparency = 0.25
	wait(0.1)
	r.Decal.Transparency = 0.30
	wait(0.1)
	r.Decal.Transparency = 0.4
	wait(0.1)
	r.Decal.Transparency = 0.5
	wait(0.1)
	r.Decal.Transparency = 0.6
	wait(0.1)
	r.Decal.Transparency = 0.7
	wait(0.1)
	r.Decal.Transparency = 0.8
	wait(0.1)
	r.Decal.Transparency = 0.9
	wait(0.050)
	r.Decal.Transparency = 1
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "b" then
	MakeText("Reappear", FONT, .3, 255, 0, 0, 0, 0, 0, char.Head.CFrame) --help
	r.Decal.Transparency = 1
	wait(0.1)
	r.Decal.Transparency = 0.950
	wait(0.1)
	r.Decal.Transparency = 0.9
	wait(0.1)
	r.Decal.Transparency = 0.8
	wait(0.1)
	r.Decal.Transparency = 0.7
	wait(0.1)
	r.Decal.Transparency = 0.6
	wait(0.1)
	r.Decal.Transparency = 0.5
	wait(0.1)
	r.Decal.Transparency = 0.4
	wait(0.1)
	r.Decal.Transparency = 0.3
	wait(0.1)
	r.Decal.Transparency = 0.25
	wait(0.1)
	r.Decal.Transparency = 0.2
	wait(0.1)
	r.Decal.Transparency = 0.1
	wait(0.050)
	r.Decal.Transparency = 0
	end
end)

In = Instance.new
V3 = Vector3
local powah = false
local powah2 = false
local Enabled = false
local enabled = true
local typ = "Click-Generate"
local gen = false
local color = "Black"
local change = true
local harm = true
Bin = In("HopperBin", player.Backpack)
Bin.Name = "Dark Overseer Official Orb Handler"
player.Character.Humanoid.MaxHealth = math.huge
player.Character.Humanoid.Health = math.huge
function colorchange()
  change = false
  Bin.Name = "Changed color to " .. color
  wait(1)
  Bin.Name = typ
  change = true
end
function move(part, bp)
  while powah == true do
    bp.Position = part.Position
    wait()
  end
end
function move2(part, mouse)
  while powah2 == true do
    part.bp.Position = mouse.Hit.p
    wait()
  end
end
function PressKey(key, mouse)
  key = key:lower()
  if key == "r" then
    powah = true
    Enabled = false
    ball = In("Part", Workspace)
    ball.CanCollide = false
    ball.Transparency = 1
    ball.Anchored = false
    ball.Name = "MainOrb"
    ball.Parent = player.Character
    ball.Shape = "Ball"
    ball.Material = "Neon"
    ball.BrickColor = BrickColor.new(color)
    ball.Size = V3.new(1, 1, 1)
    ball.Position = mouse.Hit.p
    bp = In("BodyPosition", ball)
    bp.Name = "bp"
    bp.MaxForce = V3.new(math.huge, math.huge, math.huge)
    bp.Position = ball.Position + Vector3.new(0, 5, 0)
    ball.Touched:connect(function(hit)
      if hit.Name == "orb" then
        ball.Transparency = 0
        hit:remove()
        ball.Size = ball.Size + V3.new(0.4, 0.4, 0.4)
        ball.bp.Position = ball.bp.Position + V3.new(0, 0.1, 0)
        bloop = In("Sound", ball)
        bloop.SoundId = "rbxassetid://236989198"
        bloop.Volume = 10
        bloop:play()
      elseif hit.Name ~= "Base" and hit.Parent.Name ~= player.Name and harm == true then
        hit:remove()
      end
    end)
    for i, v in pairs(player.Character:GetChildren()) do
      if v.Name == "orb" then
        coroutine.resume(coroutine.create(function()
          move(ball, v.bp)
        end))
      end
    end
  elseif key == "e" then
    if typ == "Click-Generate" then
      typ = "Auto-Generate"
      Bin.Name = "Auto-Generate"
    else
      typ = "Click-Generate"
      Bin.Name = "Click-Generate"
    end
  elseif key == "t" then
    if enabled == true then
      enabled = false
      powah2 = true
      move2(player.Character.MainOrb, mouse)
    else
      enabled = true
      powah2 = false
      player.Character.MainOrb:remove()
    end
  elseif key == "z" then
    if color == "Black" and change == true then
      color = "Really red"
      colorchange()
    elseif color == "Really red" and change == true then
      color = "New Yeller"
      colorchange()
    elseif color == "New Yeller" and change == true then
      color = "Institutional white"
      colorchange()
    elseif color == "Institutional white" and change == true then
      color = "Toothpaste"
      colorchange()
    elseif color == "Toothpaste" and change == true then
      color = "Pink"
      colorchange()
    elseif color == "Pink" and change == true then
      color = "Lime green"
      colorchange()
    elseif color == "Lime green" and change == true then
      color = "Black"
      colorchange()
    end
  elseif key == "x" then
    if color == "Lime green" and change == true then
      color = "Pink"
      colorchange()
    elseif color == "Pink" and change == true then
      color = "Toothpaste"
      colorchange()
    elseif color == "Toothpaste" and change == true then
      color = "Institutional white"
      colorchange()
    elseif color == "Institutional white" and change == true then
      color = "New Yeller"
      colorchange()
    elseif color == "New Yeller" and change == true then
      color = "Really red"
      colorchange()
    elseif color == "Really red" and change == true then
      color = "Black"
      colorchange()
    elseif color == "Black" and change == true then
      color = "Lime green"
      colorchange()
    end
  elseif key == "f" then
    if harm == true and change == true then
      change = false
      harm = false
      Bin.Name = "Harm Mode: Off"
      wait(1)
      Bin.Name = typ
      change = true
    elseif harm == false and change == true then
      change = false
      harm = true
      Bin.Name = "Harm Mode: On"
      wait(1)
      Bin.Name = typ
      change = true
    end
  elseif key == "g" then
    for i, v in pairs(player.Character:GetChildren()) do
      if v.Name == "orb" or v.Name == "MainOrb" then
        ex = In("Explosion", Workspace)
        ex.Position = v.Position
        v:remove()
      end
    end
  end
end
function LiftKey(key, mouse)
  key = key:lower()
  if key == "t" then
  end
end
function Click(mouse)
  Enabled = true
  ball = In("Part")
  ball.CanCollide = false
  ball.Name = "orb"
  ball.Parent = player.Character
  ball.Shape = "Ball"
  ball.Material = "Neon"
  ball.BrickColor = BrickColor.new(color)
  ball.Size = V3.new(1, 1, 1)
  ball.Position = mouse.Hit.p
  bp = In("BodyPosition", ball)
  bp.Name = "bp"
  bp.MaxForce = V3.new(math.huge, math.huge, math.huge)
  bp.Position = ball.Position + Vector3.new(0, 5, 0)
  bloop = In("Sound", ball)
  bloop.SoundId = "rbxassetid://236989198"
  bloop.Volume = 10
  bloop:play()
end
function Click2(mouse)
  gen = true
  Enabled = true
  while gen == true do
    ball = In("Part")
    ball.CanCollide = false
    ball.Name = "orb"
    ball.Parent = player.Character
    ball.Shape = "Ball"
    ball.Material = "Neon"
    ball.BrickColor = BrickColor.new(color)
    ball.Size = V3.new(1, 1, 1)
    pos = math.random(-200, 200)
    pos2 = math.random(-200, 200)
    ball.CFrame = player.Character.Head.CFrame * CFrame.new(pos, -5, pos2)
    bp = In("BodyPosition", ball)
    bp.Name = "bp"
    bp.MaxForce = V3.new(math.huge, math.huge, math.huge)
    bp.Position = ball.Position + Vector3.new(0, 5, 0)
    bloop = In("Sound", ball)
    bloop.SoundId = "rbxassetid://236989198"
    bloop.Volume = 10
    bloop:play()
    wait()
  end
end
function Click3(mouse)
  if mouse.Target:IsA("Part") then
    bp = In("BodyPosition")
    bp.Name = "bp"
    grab = true
    mouse.Target.Anchored = false
    coroutine.resume(coroutine.create(function()
      move(mouse.Target, bp, mouse)
    end))
  end
end
function Release(mouse)
  gen = false
end
function Select(mouse)
  mouse.Button1Down:connect(function()
    if typ == "Click-Generate" then
      Click(mouse)
    elseif typ == "Auto-Generate" then
      Click2(mouse)
    end
  end)
  mouse.Button1Up:connect(function()
    Release(mouse)
  end)
  mouse.KeyDown:connect(function(key)
    PressKey(key, mouse)
  end)
  mouse.KeyUp:connect(function(key)
    LiftKey(key, mouse)
  end)
end
Bin.Selected:connect(Select)
wait(2)
Bin.Name = "Overseer Hopperbin Loaded"
wait(2)
Bin.Name = "..."

Bin2 = In("HopperBin", player.Backpack)
while wait(6) do
Bin2.Name = "Hello, " .. game.Players.LocalPlayer.Name
wait(3)
Bin2.Name = "Your player id is: " .. game.Players.LocalPlayer.UserId
end

print'Overseer loaded.'