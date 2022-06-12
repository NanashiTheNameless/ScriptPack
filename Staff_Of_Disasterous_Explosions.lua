Modelname = "Staff Of Disasterous Explosions"
Toolname = "Staff Of Disasterous Explosions"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
local Selected = false
local inuse = false
local mousedown = false
local Character = nil

function Execute(f)
        return coroutine.resume(coroutine.create(function()f()end))
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.Material = 272
	
		for _, Surf in pairs(Surfaces) do
			p[Surf] = "Smooth"
		end
		
	p.Size = Vector3.new(X, Y, Z)
	
		if Break then
			p:BreakJoints()
		else 
			p:MakeJoints() 
		end
		
	p.Parent = Parent
	p.Locked = true
		
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
return w
end

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	Mesh = function(P, ID, x, y, z)
		local m = Instance.new("SpecialMesh")
		m.MeshId = ID
		m.Scale = Vector3.new(x, y, z)
		m.Parent = P
		return m
	end,
	Sound = function(P, ID, vol, pitch)
		local s = Instance.new("Sound")
		s.SoundId = ID
		s.Volume = vol
		s.Pitch = pitch
		s.Parent = P
		return s
	end
}


local Model,handle,toptip,bottip,HB,HW,TH,HBW,Crystal
local player = game.Players.LocalPlayer
local StaffModel = nil
local Rarm = nil
local RABrick, RABW, RAW

function GenerateModel(Parent,Torso,Rarm)
	Model = Instance.new("Model")
	Model.Name = Modelname
	handle = Part(Model, false, false, 0, 0, "Brown", 0.3, 4.4, 0.3, true)
	handle.Name = "Handle"
	Instance.new("CylinderMesh",handle)
	toptip = Part(Model, false, false, 0, 0, "Brown", 0.6, 0.2, 0.6, true)
	Weld(handle, toptip, 0, -2, 0, 0, 0, 0)
	Instance.new("CylinderMesh",toptip)
	Crystal = Part(Model, false, false, 0, 0.2, "Bright blue", 0.5, 0.75, 0.5, true)
	local w1 = Weld(handle, Crystal, 0, -2.2, 0, 0, 0, 0)
	Add.Mesh(Crystal, "http://www.roblox.com/asset/?id=9756362", 0.5, 0.75, 0.5)
	Crystal.Reflectance = 0.25
	Crystal.Transparency = 0.25
	local BotTip = Part(Model, false, false, 0, 0, "Brown", 0.2, 1.5, 0.2, true)
	local w1 = Weld(handle, BotTip, 0, 2.15, 0, 0, 0, 0)
	Add.Mesh(BotTip, "http://www.roblox.com/asset/?id=9756362", 0.4, 0.7, 0.4)
	Model.Parent = Parent
	StaffModel = Model
	
	RABrick = Part(Model, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
	RABW = Weld(Torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
	RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
	
	HB = Part(Model, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
	HBW = Weld(Rarm, HB, 0, 1, -1.5, 0, 0, 0)
	HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)
	TH = Weld(Torso, nil, -0.6, 0.1, 0, 0, math.pi/2, math.rad(-140))
	TH.Part1 = handle
	
end

local tool = nil
function GenerateTool()
	if player:IsA("Player") then
		if player.Character ~= nil then
			if player.Character:FindFirstChild("Torso") ~= nil then
				if player.Character:FindFirstChild(Modelname) == nil then
					if player.Character:FindFirstChild("Right Arm") then
						GenerateModel(player.Character,player.Character:FindFirstChild("Torso"),player.Character:FindFirstChild("Right Arm"))
						Rarm = player.Character:FindFirstChild("Right Arm")
						Character = player.Character
					end
				else
					StaffModel = player.Character:FindFirstChild(Modelname)
				end
				if player.Character:FindFirstChild(Modelname) ~= nil then
					if player.Backpack:FindFirstChild(Toolname) == nil then
					tool = Instance.new("HopperBin",player.Backpack)
					tool.Name = Toolname
					wait()
					script.Parent = tool
					end
				end
			end
		end
	end
end

function ToolAnimSelect()
	RAW.Part1 = Rarm
	local ah = CFrame.Angles(0, 0, math.rad(90))
	RAW.Part1 = Rarm
	for i = 0, 270, 270/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	HW.C0 = ah
	TH.Part1 = nil
	HW.Part1 = handle
	for i = 270, 70, -200/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	RAW.C0 = CFrame.new(0, 0, -70/500) * CFrame.Angles(70,0,0)
	inuse = false
end

function ToolAnimUnSelect()
	RAW.Part1 = Rarm
	local ah = CFrame.Angles(0, 0, math.rad(90))
		for i = 70, 270, 200/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	HW.C0 = ah
	HW.Part1 = nil
	TH.Part1 = handle
	for i = 270, 0, -270/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
	wait()
	end
	RAW.Part1 = nil
	inuse = false
end

function prop(part, parent, collide, tran, ref, x, y, z, color)
	part.Parent = parent
	part.formFactor = 3
	part.Anchored = true
	part.CanCollide = collide
	part.Transparency = tran
	part.Reflectance = ref
	part.Material = 288
	part.Size = Vector3.new(x,y,z)
	part.BrickColor = BrickColor.new(color)
	part.TopSurface = 0
	part.BottomSurface = 0
	part:BreakJoints()
end

local a,b,c -- explosion
function Selected(mouse)
	if inuse == false then
		inuse = true
		ToolAnimSelect()
		Selected = true
	end
	if Selected == true then
		mouse.Button1Down:connect(function()
				mousedown = true
			while mousedown do
				if Character:FindFirstChild("Humanoid") ~= nil then
					if Character:FindFirstChild("Humanoid").Health > 0 then
						if Character:FindFirstChild("ForceField") == nil then
							c = Instance.new("ForceField",Character)
						end
						b = Instance.new("Part")
						prop(b, Character, false, 0.4, 0.25, 0.05, 0.05, (Crystal.Position - mouse.hit.p).magnitude, "Cyan")
						b.CFrame = CFrame.new(Crystal.Position, mouse.hit.p) * CFrame.new(0,0,-b.Size.Z/2)
						local ex = Instance.new("Explosion")
						ex.Parent = Character
						ex.DestroyJointRadiusPercent = 1
						ex.ExplosionType = 2
						ex.Position = mouse.hit.p
						ex.BlastRadius = 5
						ex.BlastPressure = 100000
						game:GetService("Debris"):AddItem(b,.25)
					end
				end
			wait(0.1)

			end
		end)
		mouse.Button1Up:connect(function()
			if Character:FindFirstChild("ForceField") ~= nil then
				game:GetService("Debris"):AddItem(Character:FindFirstChild("ForceField"),.5)
			end
			mousedown = false
		end)
	end
end




function UnSelected()
	if inuse == false then
			if Character:FindFirstChild("ForceField") ~= nil then
				game:GetService("Debris"):AddItem(Character:FindFirstChild("ForceField"),.5)
			end
		mousedown = false
		inuse = true
		ToolAnimUnSelect()
		HW.Part1 = nil
		TH.Part1 = handle
		Selected = false
	end
end

GenerateTool()

if tool ~= nil then
	tool.Selected:connect(Selected)
	tool.Deselected:connect(UnSelected)
end
