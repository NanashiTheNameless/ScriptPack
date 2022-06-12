local Player = game:service("Players").LocalPlayer
local asset = "http://www.roblox.com/asset/?id="
Stats = {
Energy = 60,
MaxEnergy = 120,
Rage = 120,
MaxRage = 120,
}
pcall(function() Player.Character.WeaponBase:remove() end)
local Model = Instance.new("Model",Player.Character)
Model.Name = "WeaponBase"
local Char = Player.Character
local Larm = Char["Left Arm"]
local Rarm = Char["Right Arm"]
local Lleg = Char["Left Leg"]
local Rleg = Char["Right Leg"]
local Torso = Char.Torso
local Head = Char.Head
local Activ = false
local select = false
local idle = true
function Part(Name, Parent, Func)
	local P = Instance.new("Part",Parent)
	P.Name = Name
	P.CanCollide = false
	P.Locked = true
	if Func ~= nil then
		Func(P)
	end
	return P
end
local function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end
function NewI(Name,Parent,Instanc,Func)
	local I = Instance.new(Instanc,Parent)
	I.Name = Name
	if Func ~= nil then
		Func(I)
	end
	return I
end
function Gui(Name,Type,Parent,Func)
	local G = Instance.new(Type,Parent)
	G.Name = Name
	if Func ~= nil then
		Func(G)
	end
	return G
end
--Arm welds
local TP = Torso
local RP = Part("Ignore",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = TP Weld.C1 = CFrame.new(-1.5,-0.5,0) v.Transparency = 0 end)
local LP = Part("Ignore",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = TP Weld.C1 = CFrame.new(1.5,-0.5,0) v.Transparency = 0 end)
local RlP = Part("Ignore",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = TP Weld.C1 = CFrame.new(-0.5,1.5,0) v.Transparency = 0 end)
local LlP = Part("Ignore",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = TP Weld.C1 = CFrame.new(0.5,1.5,0) v.Transparency = 0 end)
local HP = Part("Ignore",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = TP Weld.C1 = CFrame.new(0,-1,0) v.Transparency = 0 end)
local RW = NewI("Ignore",RP,"Weld",function(v) v.Part1 = RP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local LW = NewI("Ignore",LP,"Weld",function(v) v.Part1 = LP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local RlW = NewI("Ignore",RlP,"Weld",function(v) v.Part1 = RlP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local LlW = NewI("Ignore",LlP,"Weld",function(v) v.Part1 = LlP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local HW = NewI("Ignore",HP,"Weld",function(v) v.Part1 = HP v.Part0 = Head v.C0 = CFrame.new(0,-0.5,0) end)
local TW = Instance.new("BodyGyro")
TW.Name = "Ignore"
TW.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
--Prop
local HP = Part("HandleP",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = Rarm Weld.C1 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP2 = Part("Handle2",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP3 = Part("Handle3",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,-1.11125*2.5,-0.1)*CFrame.Angles(math.rad(11.25),0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1/2,1,1) end)
local HP4 = Part("Handle4",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,-1.11125*2.5,0.1)*CFrame.Angles(math.rad(-11.25),0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1/2,1,1) end)
local HP5 = Part("Handle5",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP3 Weld.C1 = CFrame.new(0,-1.11125,-0.1)*CFrame.Angles(math.rad(11.25),0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1/2,1,1) end)
local HP6 = Part("Handle6",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP5 Weld.C1 = CFrame.new(0,-1.45,-0.145)*CFrame.Angles(math.rad(11.25),0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1/2,1,1) end)
local HP7 = Part("Handle7",Model,function(v) v.BrickColor = BrickColor.new("Light stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.5) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP5 Weld.C1 = CFrame.new(0,0,0.25)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(0.499/2,1,1) end)
local HP8 = Part("Handle8",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.6,0.25) v:BreakJoints() v.Reflectance = 0 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP6 Weld.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(180),0,0) local m = Instance.new("SpecialMesh",v) m.MeshType = "Wedge" m.Scale = Vector3.new(1/2,1,1) end)
local HP9 = Part("Handle9",Model,function(v) v.BrickColor = BrickColor.new("Light stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.6,0.6) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP8 Weld.C1 = CFrame.new(0,-0.025,-0.176)*CFrame.Angles(0,0,0) local m = Instance.new("SpecialMesh",v) m.MeshType = "Wedge" m.Scale = Vector3.new(0.498/2,1,1) end)
local HP10 = Part("Handle10",Model,function(v) v.BrickColor = BrickColor.new("Light stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.35,0.25) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP7 Weld.C1 = CFrame.new(0,-0.05,0.275)*CFrame.Angles(math.rad(180-6),0,0) local m = Instance.new("SpecialMesh",v) m.MeshType = "Wedge" m.Scale = Vector3.new(0.499/2,1,1) end)
local HP11 = Part("Handle11",Model,function(v) v.BrickColor = BrickColor.new("Light stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,1.5,0.5) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP6 Weld.C1 = CFrame.new(0,0.075,0.25)*CFrame.Angles(0,0,0)local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(0.498/2,1,1) end)
for i = 1, 6 do
local HP12 = Part("Handle12",Model,function(v) v.BrickColor = BrickColor.new("Navy blue") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,-1.5+(0.75*i),0)*CFrame.Angles(0,math.rad(45),0) local m = Instance.new("SpecialMesh",v) m.MeshType = "FileMesh" m.MeshId = asset.."9756362" m.Scale = Vector3.new(0.35,0.35,0.35) end)
end
local HPs = HP11
for i = 1, 7 do
local HP13 = Part("Handle13",Model,function(v) v.BrickColor = BrickColor.new("Navy blue") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() v.Reflectance = 0.2 local Weld = Instance.new("Weld",v) Weld.Name = "Ignore" Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,-1.5+(0.75*i),0)*CFrame.Angles(0,0,0) local m = Instance.new("SpecialMesh",v) m.MeshType = "FileMesh" m.MeshId = asset.."9756362" m.Scale = Vector3.new(0.01,1.5,0.35) end)
if i == 7 then
HPs = HP13
end
end
--
function ShowHit(dmg,targ)
	local ml = Instance.new("Model",Model)
	ml.Name = "-"..dmg
	local lbl = Part("Head",ml,function(v) v.BrickColor = BrickColor.new("Bright red") v.formFactor = "Custom" v.Transparency = 0 v.Size = Vector3.new(0.3,0.3,0.3) v.Anchored = true v.CFrame = targ.Torso.CFrame*CFrame.new(math.rad(-1,1),math.rad(-1,1),math.rad(-1,1)) local m = Instance.new("SpecialMesh",v) m.MeshType = "Sphere"end)
	local H = Instance.new("Humanoid",ml)
	H.MaxHealth = 0
	H.Health = 0
	coroutine.resume(coroutine.create(function()
		for i = 1, 30 do
			lbl.CFrame = lbl.CFrame*CFrame.new(0,0.25,0)
			wait()
		end
		ml:remove()
	end))
end
function Damage(dmg,mag)
	pcall(function()
		for _,v in pairs(game:service("Workspace"):children()) do 
			if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then
				if (v.Torso.Position - HP10.Position).magnitude<=mag or (v.Torso.Position - HP9.Position).magnitude<=mag or (v.Torso.Position - HP8.Position).magnitude<=mag or (v.Torso.Position - HP11.Position).magnitude<=mag or (v.Torso.Position - HP7.Position).magnitude<=mag then
					if v.Name ~= Player.Character.Name then
						v.Humanoid.Health = v.Humanoid.Health - dmg
						ShowHit(dmg, v)
					end
				end
			end
		end
	end)
end
--
function Trail(Prt1, Prt2)
	local Pos1 = Prt1.Position
	local Pos2 = Prt2
	local Trl = Part("Trail",Model,function(v) v.BrickColor = BrickColor.new("White") v.formFactor = "Custom" v.Transparency = 0.5 v.Size = Vector3.new(0.2,(Pos1 - Pos2).magnitude,0.2) v.Anchored = true v.CFrame = CFrame.new((Pos1+Pos2)/2,Pos2)*CFrame.Angles(math.rad(90),0,0) Instance.new("CylinderMesh",v) end)
		coroutine.resume(coroutine.create(function()
			wait(0.25)
			Trl:remove()
		end))
	return Pos1
end
--
local hit = 0
local close = false
function Slash()
	if Activ == false then
	Activ = true
	idle = false
		local Last = HP8.CFrame*CFrame.new(0,1,0).p
		local Last2 = HPs.CFrame*CFrame.new(0,-1,0).p
		local maincf = TW.cframe
		for i = 0,1,.125 do
			Damage(math.random(0.1,2),3.5)
			local Trl = Trail(HP8,Last)
			local Trl2 = Trail(HPs,Last2)
			Last = Trl
			Last2 = Trl2
			RW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-175+55*i),math.rad(75-150*i),math.rad(45+90*i))
			LW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(165-75*i),math.rad(0),math.rad(-45-22.5*i))
			TW.cframe = maincf*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90*i),0)
			HW.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(45-0*i),0)
			wait(-0.03)
		end
		close = true
		for i = 0,1,.125 do
			Damage(math.random(0.1,2),3.5)
			local Trl = Trail(HP8,Last)
			local Trl2 = Trail(HPs,Last2)
			Last = Trl
			Last2 = Trl2
			RW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-120+0*i),math.rad(-75-75*i),math.rad(135+0*i))
			LW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(165-75*i),math.rad(0),math.rad(-67.5+0*i))
			TW.cframe = maincf*CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90+90*i),0)
			HW.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(45-0*i),0)
			wait(-0.03)
		end
		
	hit = 0
	idle = true
	Activ = false
	end
end
function DashStab()
	if Activ == false then
	Activ = true
		
	Activ = false
	end
end
--
function Shockwave()
	if Activ == false then
		Activ = true
		Activ = false
	end
end
--
if script.Parent.className ~= "HopperBin" then
pcall(function() Player.Backpack.Scimythe:remove() end)
    local h = Instance.new("HopperBin", Player.Backpack)
    h.Name = "Scimythe" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
TW.Parent = TP
RW.Part0 = Rarm
LW.Part0 = Larm
RlW.Part0 = Rleg
LlW.Part0 = Lleg
select = true
coroutine.wrap(function()
	while select == true do
		if idle == true then
			TW.cframe = ComputePos(TP.Position,mouse.hit.p)*CFrame.Angles(0,math.rad(-45),0)
		end
		game:service("RunService").Stepped:wait()
	end
end)()
	for i = 0,1,.075 do
		RW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-175*i),math.rad(75*i),math.rad(45*i))
		LW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(165*i),0,math.rad(-45*i))
		HW.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(45*i),0)
		wait(-0.03)
	end
	mouse.Move:connect(function()
	end)
    mouse.Button1Down:connect(function()
		if close == true or hit == 0 then
			if close == true then
			close = false
			end
		hit = hit + 1
			if hit == 1 then
			Slash()
			end
		end
    end)
    mouse.KeyDown:connect(function(key)
		if key == "q" then
			if Activ == false then
				DashStab()
			end
		elseif key == "e" then 
			Shockwave()
		end
    end)
	mouse.KeyUp:connect(function(key)
	end)
end

function onDesel(mouse)
select = false
TW.Parent = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

--mediafire gtfo password