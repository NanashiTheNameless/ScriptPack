local isScriptNil = false

local PlrName = "xExplicitCass"
local Plrs = game:GetService("Players")
local RunService = game:GetService("RunService")
local Content = game:GetService("ContentProvider")
local LP = Plrs.LocalPlayer
local Char = LP.Character
local PlrGui = LP.PlayerGui
local Backpack = LP.Backpack
local Mouse = LP:GetMouse()

local Camera = Workspace.CurrentCamera
local LastCamCF = Camera.CoordinateFrame
local AnimJoints = {}
local Cons = {}
local mDown = false
local Multi = false
local Grabbing = false
local Current = {}
local Alpha = 1
local LightNum = 1

Current.Part = nil
Current.BP = nil
Current.BA = nil
Current.Mass = nil

local LastPart = nil

local Head = Char["Head"]
local Torso = Char["Torso"]
local Humanoid = Char["Humanoid"]
local LA = Char["Left Arm"]
local RA = Char["Right Arm"]
local LL = Char["Left Leg"]
local RL = Char["Right Leg"]

local LS, RS;

local OrigLS = Torso["Left Shoulder"]
local OrigRS = Torso["Right Shoulder"]

for _,v in pairs(Char:GetChildren()) do
	if v.Name == ModID then
		v:Destroy()
	end
end

for _,v in pairs(PlrGui:GetChildren()) do
	if v.Name == "PadsGui" then
		v:Destroy()
	end
end

local ModID = "Pads"
local Objects = {}
local Grav = 196.2

local sin=math.sin
local cos=math.cos
local max=math.max
local min=math.min
local atan2=math.atan2
local random=math.random
local tau = 2 * math.pi

local BodyObjects = {
	["BodyVelocity"] = true;
	["BodyAngularVelocity"] = true;
	["BodyForce"] = true;
	["BodyThrust"] = true;
	["BodyPosition"] = true;
	["RocketPropulsion"] = true;
}

if LP.Name == PlrName and isScriptNil then
	script.Parent = nil
end

LP.CameraMode = "Classic"

local Assets = {
}

local LS0, LS1 = OrigLS.C0, OrigLS.C1
local RS0, RS1 = OrigRS.C0, OrigRS.C1

for i,v in pairs(Assets) do
	local ID = tostring(Assets[i])
	Assets[i] = "http://www.roblox.com/asset/?id=" .. ID
	Content:Preload("http://www.roblox.com/asset/?id=" .. ID)
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components();
	local trace = m00 + m11 + m22 if trace > 0 then 
		local s = math.sqrt(1 + trace);
		local recip = 0.5/s;
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5;
	else 
		local i = 0;
		if m11 > m00 then 
			i = 1;
		end;
		if m22 > (i == 0 and m00 or m11) then
			i = 2 end if i == 0 then
			local s = math.sqrt(m00-m11-m22+1);
			local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip; 
		elseif i == 1 then
			local s = math.sqrt(m11-m22-m00+1);
			local recip = 0.5/s;
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip ;
		elseif i == 2 then
			local s = math.sqrt(m22-m00-m11+1);
			local recip = 0.5/s;
			return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip;
		end;
	end; 
end;

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z;
	local wx, wy, wz = w*xs, w*ys, w*zs;
	local xx = x*xs;
	local xy = x*ys;
	local xz = x*zs;
	local yy = y*ys;
	local yz = y*zs;
	local zz = z*zs;
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end;

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4];
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta);
			local invSinTheta = 1/math.sin(theta);
			startInterp = math.sin((1-t)*theta)*invSinTheta;
			finishInterp = math.sin(t*theta)*invSinTheta;
		else
			startInterp = 1-t finishInterp = t;
		end;
	else 
		if (1+cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta);
			local invSinTheta = 1/math.sin(theta);
			startInterp = math.sin((t-1)*theta)*invSinTheta;
			finishInterp = math.sin(t*theta)*invSinTheta;
		else startInterp = t-1 finishInterp = t;
		end;
	end;
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp;
end;

function CLerp(a,b,t)
	local qa={QuaternionFromCFrame(a)};
	local qb={QuaternionFromCFrame(b)};
	local ax,ay,az=a.x,a.y,a.z;
	local bx,by,bz=b.x,b.y,b.z;
	local _t=1-t;
	return QuaternionToCFrame(_t*ax+t*bx,_t*ay+t*by,_t*az+t*bz,QuaternionSlerp(qa, qb, t));
end

function GetWeld(weld) 
	local obj 
	for i, v in pairs(AnimJoints) do 
		if v[1] == weld then 
			obj = v 
			break 
		end 
	end 
	if not obj then 
		obj = {weld,NV} 
		table.insert(AnimJoints,obj) 
	end 
	return weld.C0.p, obj[2] 
end 

function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, override, overrideLower, smooth) 
	smooth = smooth or 1 
	local obj 
	for i, v in pairs(AnimJoints) do 
		if v[1] == weld then 
			obj = v 
			break 
		end 
	end 
	if not obj then 
		obj = {weld,NV} 
		table.insert(AnimJoints,obj) 
	end 
	
	local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
	
	local tox,toy,toz = 0,0,0 
	tox = math.abs(origangle.x - nextangle.x) *perc 
	toy = math.abs(origangle.y - nextangle.y) *perc 
	toz = math.abs(origangle.z - nextangle.z) *perc 
	tox = ((origangle.x > nextangle.x and -tox) or tox)
	toy = ((origangle.y > nextangle.y and -toy) or toy)
	toz = ((origangle.z > nextangle.z and -toz) or toz)
	
	local tox2,toy2,toz2 = 0,0,0 
	tox2 = math.abs(origpos.x - nextpos.x) *perc 
	toy2 = math.abs(origpos.y - nextpos.y) *perc 
	toz2 = math.abs(origpos.z - nextpos.z) *perc 
	tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
	toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
	toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
	
	obj[2] = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
	weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 

function RotateCamera(x, y)
	Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(x, y, 0) * CFrame.new(0, 0, (Camera.CoordinateFrame.p - Camera.Focus.p).magnitude)
end

function GetAngles(cf)
	local lv = cf.lookVector
	return -math.asin(lv.y), math.atan2(lv.x, -lv.z)
end

local LastCamCF = Camera.CoordinateFrame

function Look()
	if AlphaOn == true then
		local x, y = GetAngles(LastCamCF:toObjectSpace(Camera.CoordinateFrame))
		Camera.CoordinateFrame = LastCamCF
		RotateCamera(x * -(Alpha), y * -(Alpha))
		LastCamCF = Camera.CoordinateFrame
	end
end

function Cor(Func)
	local Ok, Err = coroutine.resume(coroutine.create(Func))
	if not Ok then
		print(Err)
	end
end

function Cor2(Func)
	local Ok, Err = ypcall(Func)
	if not Ok then
		print(Err)
	end
end

function MakePads()
	-- 1 - VTelekinesis
	P1 = Instance.new("Model")
	P1.Name = ModID

	-- 2 - RBase
	P2 = Instance.new("Part")
	P2.CFrame = CFrame.new(Vector3.new(21.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
	P2.FormFactor = Enum.FormFactor.Custom
	P2.Size = Vector3.new(0.799999952, 0.200000003, 0.800000012)
	P2.Anchored = true
	P2.BrickColor = BrickColor.new("White")
	P2.Friction = 0.30000001192093
	P2.Shape = Enum.PartType.Block
	P2.Name = "RBase"
	P2.Parent = P1
    P2.Transparency = 1
	-- 3 - Mesh
	P3 = Instance.new("CylinderMesh")
	P3.Scale = Vector3.new(1, 0.5, 1)
	P3.Parent = P2

	-- 4 - LBase
	P4 = Instance.new("Part")
	P4.CFrame = CFrame.new(Vector3.new(18.100008, 1.95000589, 11.899971)) * CFrame.Angles(-0, 0, -0)
	P4.FormFactor = Enum.FormFactor.Custom
	P4.Size = Vector3.new(0.799999952, 0.200000003, 0.800000012)
	P4.Anchored = true
	P4.BrickColor = BrickColor.new("White")
	P4.Friction = 0.30000001192093
	P4.Shape = Enum.PartType.Block
	P4.Name = "LBase"
	P4.Parent = P1
    P4.Transparency = 1
	-- 5 - Mesh
	P5 = Instance.new("CylinderMesh")
	P5.Scale = Vector3.new(1, 0.5, 1)
	P5.Parent = P4

	-- 7 - Mesh
	P7 = Instance.new("CylinderMesh")
	P7.Scale = Vector3.new(1, 0.5, 1)
	P7.Parent = P6

	

	-- 9 - Mesh
	P9 = Instance.new("CylinderMesh")
	P9.Scale = Vector3.new(1, 0.5, 1)
	P9.Parent = P8

	

	-- 11 - Mesh
	P11 = Instance.new("CylinderMesh")
	P11.Scale = Vector3.new(1, 0.5, 1)
	P11.Parent = P10

	
	-- 13 - Mesh
	P13 = Instance.new("CylinderMesh")
	P13.Scale = Vector3.new(1, 0.5, 1)
	P13.Parent = P12


	-- 15 - Mesh
	P15 = Instance.new("CylinderMesh")
	P15.Scale = Vector3.new(1, 0.5, 1)
	P15.Parent = P14

	-- 17 - Mesh
	P17 = Instance.new("CylinderMesh")
	P17.Scale = Vector3.new(1, 0.5, 1)
	P17.Parent = P16

	P1.Parent = LP.Character
	P1:MakeJoints()
	return P1
end

weldModel = function(model, unanchor, rooty)
	local parts = {}
	local function recurse(object)
		if object:IsA("BasePart") then
			table.insert(parts, object)
		end
		for _,child in pairs(object:GetChildren()) do
			recurse(child)
		end
	end
	recurse(model)
	
	local rootPart = rooty or parts[1]
	for _, part in pairs(parts) do
		local cframe = rootPart.CFrame:toObjectSpace(part.CFrame)
		local weld = Instance.new("Weld")
		weld.Part0 = rootPart
		weld.Part1 = part
		weld.C0 = cframe
		weld.Parent = rootPart
	end
	
	if unanchor then
		for _, part in pairs(parts) do
			part.Anchored = false
			part.CanCollide = false
		end
	end
end

weldItem = function(rootPart, Item, TheC0, unanchor, ParentItem)
	local cframe = TheC0 or rootPart.CFrame:toObjectSpace(Item.CFrame)
	local weld = Instance.new("Weld")
	weld.Name = "Weld"
	weld.Part0 = rootPart
	weld.Part1 = Item
	weld.C0 = cframe
	weld.Parent = ParentItem and Item or rootPart
	
	if unanchor then
		Item.Anchored = false
	end
	return weld, cframe
end

scaleModel = function(model, scale)
	local parts = {}
	local function recurse(object)
		if object:IsA("BasePart") then
			table.insert(parts, object)
		end
		for _,child in pairs(object:GetChildren()) do
			recurse(child)
		end
	end
	recurse(model)
	
	local top, bottom, left, right, back, front
	for _, part in pairs(parts) do
		if top == nil or top < part.Position.y then			top = part.Position.y end
		if bottom == nil or bottom > part.Position.y then	bottom = part.Position.y end
		if left == nil or left > part.Position.x then		left = part.Position.x end
		if right == nil or right < part.Position.x then		right = part.Position.x end
		if back == nil or back > part.Position.z then		back = part.Position.z end
		if front == nil or front < part.Position.z then		front = part.Position.z end
	end
	
	local middle = Vector3.new( left+right, top+bottom, back+front )/2
	local minSize = Vector3.new(0.2, 0.2, 0.2)
	
	for _, part in pairs(parts) do
		local foo = part.CFrame.p - middle
		local rotation = part.CFrame - part.CFrame.p
		local newSize = part.Size*scale
		part.FormFactor = "Custom"
		part.Size = newSize
		part.CFrame = CFrame.new( middle + foo*scale ) * rotation
		
		if newSize.x < minSize.x or newSize.y < minSize.y or newSize.z < minSize.z then
			local mesh
			for _, child in pairs(part:GetChildren()) do
				if child:IsA("DataModelMesh") then
					mesh = child
					break
				end
			end
			
			if mesh == nil then
				mesh = Instance.new("BlockMesh", part)
			end
			
			local oScale = mesh.Scale
			local newScale = newSize/minSize * oScale
			if 0.2 < newSize.x then newScale = Vector3.new(1 * oScale.x, newScale.y, newScale.z) end
			if 0.2 < newSize.y then newScale = Vector3.new(newScale.x, 1 * oScale.y, newScale.z) end
			if 0.2 < newSize.z then newScale = Vector3.new(newScale.x, newScale.y, 1 * oScale.z) end
			
			mesh.Scale = newScale
		end
	end
end

function getMass(Obj, Total)
	local newTotal = Total
	local returnTotal = 0
	
	if Obj:IsA("BasePart") then
		newTotal = newTotal + Objects[Obj]
	elseif BodyObjects[Obj.ClassName] then
		Obj:Destroy()
	end
	
	if Obj:GetChildren() and #Obj:GetChildren() > 0 then
		for _,v in pairs(Obj:GetChildren()) do
			returnTotal = returnTotal + getMass(v, newTotal)
		end
	else
		returnTotal = newTotal
	end
	
	return returnTotal
end

function getTargFromCurrent()
	local Current = Current.Part
	if Current:IsA("BasePart") then
		return Current
	elseif Current:findFirstChild("Torso") then
		return Current.Torso
	else
		for _,v in pairs(Current:GetChildren()) do
			if v:IsA("BasePart") then
				return v
			end
		end
	end
end

function Fire(Part, Vec, Inv)
	pcall(function()
		Current.BP:Destroy()
		Current.BP = nil
	end)
	pcall(function()
		Current.BA:Destroy()
		Current.BA = nil
	end)
	pcall(function()
		if Inv then
			Part.Velocity = -((Vec - Torso.Position).unit * Grav * 1.1)
		else
			Part.Velocity = ((Vec - Camera.CoordinateFrame.p).unit * Grav * 1.1)
		end
		Current.Mass = nil
	end)
	Reset()
end

function Reset()
	LS.Parent = nil
	RS.Parent = nil
	
	OrigLS.Parent = Torso
	OrigRS.Parent = Torso
	
	OrigLS.C0 = LS0
	OrigRS.C0 = RS0
end

function Start()
	Cor(function()
		repeat wait(1/30) until LP.Character and LP.Character.Parent == Workspace and LP.Character:findFirstChild("Torso")
		Char = LP.Character
		PlrGui = LP.PlayerGui
		Backpack = LP.Backpack
		Mouse = LP:GetMouse()
		
		for _,v in pairs(Cons) do
			v:disconnect()
		end
		Cons = {}

		Camera = Workspace.CurrentCamera
		LastCamCF = Camera.CoordinateFrame
		AnimJoints = {}
		mDown = false
		Multi = false
		Grabbing = false
		Current = {}
		Alpha = 1

		Head = Char["Head"]
		Torso = Char["Torso"]
		Humanoid = Char["Humanoid"]
		LA = Char["Left Arm"]
		RA = Char["Right Arm"]
		LL = Char["Left Leg"]
		RL = Char["Right Leg"]
		
		OrigLS = Torso["Left Shoulder"]
		OrigRS = Torso["Right Shoulder"]

		for _,v in pairs(Char:GetChildren()) do
			if v.Name == ModID then
				v:Destroy()
			end
		end

		for _,v in pairs(PlrGui:GetChildren()) do
			if v.Name == "PadsGui" then
				v:Destroy()
			end
		end
		
		LS = Instance.new("Weld")
		RS = Instance.new("Weld")

		LS.Name = OrigLS.Name
		LS.Part0 = Torso
		LS.Part1 = LA
		LS.C0 = LS0
		LS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

		RS.Name = OrigRS.Name
		RS.Part0 = Torso
		RS.Part1 = RA
		RS.C0 = RS0
		RS.C1 = CFrame.new(0, 0.5, 0,  1, 0, 0,  0, 0, 1,  0, -1, 0)

		local Pads = MakePads()
		local LPad = Pads.LBase
		local RPad = Pads.RBase

		weldModel(LPad, true, LPad)
		weldModel(RPad, true, RPad)

		local GripWeldL = Instance.new("Weld")
		GripWeldL.Name = "GripWeldL"
		GripWeldL.Part0 = LA
		GripWeldL.Part1 = LPad
		GripWeldL.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
		GripWeldL.Parent = LA

		local GripWeldR = Instance.new("Weld")
		GripWeldR.Name = "GripWeldR"
		GripWeldR.Part0 = RA
		GripWeldR.Part1 = RPad
		GripWeldR.C0 = CFrame.new(0, -1.05, 0) * CFrame.Angles(0, math.rad(180), 0)
		GripWeldR.Parent = RA
		
		local isParts = false

		table.insert(Cons, Mouse.KeyDown:connect(function(Key)
			Key = Key:lower()
			if Key == "z" then
				--Stuff
			elseif Key == "f" then
				local Current = Current.Part
				if Current and Current.Parent ~= nil and not Multi then
					Current:BreakJoints()
				end
			elseif Key == "q" then
				if isParts then
					isParts = false
					for _,v in pairs(Workspace:GetChildren()) do
						if v.Name == "MyPartV" and v:IsA("BasePart") then
							v:Destroy()
						end
					end
				else
					isParts = true
					for i = 1, 50 do
						local Part = Instance.new("Part")
						Part.Color = Color3.new(math.random(), math.random(), math.random())
						Part.Transparency = 0
						Part.Size = Vector3.new(math.random(1, 3), math.random(1, 3), math.random(1, 3))
						Part.Archivable = true
						Part.CanCollide = false
						Part.Material = "Neon"
						Part.Locked = false
						Part.CFrame = Torso.CFrame * CFrame.new(math.random(-15, 15), -1, math.random(-15, 15))
						Part.Anchored = true
						Part.Name = "MyPartV"
						Part.TopSurface = "Smooth"
						Part.BottomSurface = "Smooth"
						Part.Parent = Workspace
					end
				end
			elseif Key == "e" then
				local Targ;
				if Current.Part and Current.Part ~= nil then
					Targ = getTargFromCurrent()
				else
					Targ = LastPart
				end
				if Targ and Targ.Parent ~= nil and not Multi then
					local Ex = Instance.new("Explosion", Workspace)
					Ex.Position = Targ.CFrame.p
					Ex.BlastRadius = 16
					Ex.DestroyJointRadiusPercent = 0.5
				end
			elseif Key == "c" then
				if Current.Part and Current.Part.Parent ~= nil and not Multi then
					local Part = getTargFromCurrent()
					if Part then
						Grabbing = false
						if Mouse.Hit then
							local TargPos = CFrame.new(Camera.CoordinateFrame.p, Mouse.Hit.p) * CFrame.new(0, 0, -1000)
							Fire(Part, TargPos.p)
						else
							Fire(Part, Mouse.Origin.p + Mouse.UnitRay.Direction, true)
						end
					end
				end
			end
		end))

		table.insert(Cons, Mouse.Button1Up:connect(function()
			mDown = false
			if Grabbing == true and Multi == false then
				Grabbing = false
				Reset()
			end
			if Current.Part ~= nil then
				LastPart = getTargFromCurrent()
				Current = {}
			end
		end))

		local function makeLightning(Par, Start, End, Width, Length, RandomScale, ArcScale, Num1)
			local oldParts = {}
			for _,v in pairs(Par:GetChildren()) do
				v.CFrame = CFrame.new(5e5, 5e5, 5e5)
				table.insert(oldParts, v)
			end
			local Distance = (Start-End).Magnitude
			local ArcScale = ArcScale or 1
			local RandomScale = RandomScale or 0
			local Last = Start
			local IterNum = 0

			while Par.Parent do
				IterNum = IterNum + 1
				local New = nil
				if (Last-End).Magnitude < Length then
					New = CFrame.new(End)
				else
					if (End-Last).Magnitude < Length*2 then
						RandomScale = RandomScale*0.5
						ArcScale = ArcScale*0.5
					end
					local Direct = CFrame.new(Last,End)
					New = Direct*CFrame.Angles(math.rad(math.random(-RandomScale/4,RandomScale*ArcScale)),math.rad(math.random(-RandomScale,RandomScale)),math.rad(math.random(-RandomScale,RandomScale)))
					New = New*CFrame.new(0,0,-Length)
				end
				local Trail = nil
				if oldParts[IterNum] then
					Trail = oldParts[IterNum]
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("Cyan")
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					oldParts[IterNum] = nil
				else
					Trail = Instance.new("Part")
					Trail.Name = "Part"
					Trail.FormFactor = "Custom"
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("White")) or BrickColor.new("White")
					Trail.Transparency = 0
					Trail.Anchored = true
					Trail.CanCollide = false
					Trail.Locked = true
					Trail.BackSurface = "SmoothNoOutlines"
					Trail.BottomSurface = "SmoothNoOutlines"
					Trail.FrontSurface = "SmoothNoOutlines"
					Trail.LeftSurface = "SmoothNoOutlines"
					Trail.RightSurface = "SmoothNoOutlines"
					Trail.TopSurface = "SmoothNoOutlines"
					Trail.Material = "Neon"
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					Trail.Parent = Par
				end
				Last = New.p
				if (Last-End).Magnitude < 1 then
					break
				end
			end
			for _,v in pairs(oldParts) do
				v:Destroy()
			end
		end

		table.insert(Cons, Mouse.Button1Down:connect(function()
			mDown = true
			local Targ = Mouse.Target
			Cor(function()
				if Targ and Objects[Targ] and not Multi then
					Grabbing = true
					Current.Part = Targ
					local Mass = Objects[Targ]
					local ForceNum = 0
					local Hum = nil
					
					for _,v in pairs(Targ:GetChildren()) do
						if BodyObjects[v.ClassName] then
							v:Destroy()
						end
					end
					
					for _,v in pairs(Workspace:GetChildren()) do
						if v:findFirstChild("Humanoid") and v:IsAncestorOf(Targ) then
							Hum = v.Humanoid
							Mass = getMass(v, 0)
							Current.Part = v
							break
						end
					end
					
					Current.Mass = Mass
					
					if not Hum then
						Targ:BreakJoints()
					end
					
					ForceNum = Mass * Grav
					Targ.CanCollide = true
					Targ.Anchored = false
					
					local BP = Instance.new("BodyPosition")
					BP.maxForce = Vector3.new(3 * ForceNum, 3 * ForceNum, 3 * ForceNum)
					BP.Parent = Targ
					
					local Ang = Instance.new("BodyAngularVelocity")
					Ang.Parent = Targ
					
					Current.BP = BP
					Current.BA = Ang
					
					OrigLS.Parent = nil
					OrigRS.Parent = nil
					
					LS.Parent = Torso
					RS.Parent = Torso
					
					LS.C0 = LS0
					RS.C0 = RS0
					
					local DirDot = Mouse.UnitRay.Direction:Dot(Targ.Position - Mouse.Origin.p)
					local BPPos = Vector3.new(0, 0, 0)
					local Vel = Vector3.new(0, 0, 0)
					local Vlev = random() * math.pi
					local RPos = Vector3.new(random() * 2 - 1, cos(Vlev), random() * 2 - 1)
					
					local Ball = Instance.new("Part")
					Ball.Name = "Ball"
					Ball.FormFactor = "Custom"
					Ball.Color = Color3.new(0, 1, 1)
					Ball.Transparency = 0.3
					Ball.Anchored = true
					Ball.CanCollide = false
					Ball.Locked = true
					Ball.BottomSurface, Ball.TopSurface = "Smooth", "Smooth"
					Ball.Size = Vector3.new(0.5, 0.5, 0.5)
					Ball.CFrame = Torso.CFrame * CFrame.new(0, 1, -3)
					Ball.Parent = Char

					if Targ.Name == "MyPartV" then
						Targ.Name = "MyPartF"
					end

					local LightMod = Instance.new("Model", Char)
						
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					Mesh.Parent = Ball
					
					local Size = 0.5
					local Rise = true
					
					while Grabbing and BP and Ang and Targ.Parent ~= nil do
						local BPPos = Mouse.Origin.p + Mouse.UnitRay.Direction * DirDot
						Ang.angularvelocity = Vel
						BP.position = BPPos + RPos
						RPos = Vector3.new(max(-1, min(RPos.x + random() * 0.02 - 0.01, 1)), cos(Vlev), max(-1, min(RPos.z + random() * 0.02 - 0.01, 1)))
						Vel = Vector3.new(max(-1, min(Vel.x + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.y + random() * 0.2 - 0.1, 1)), max(-1, min(Vel.z + random() * 0.2 - 0.1, 1)))
						Vlev = (Vlev + 0.05) % tau
						
						if Hum then
							Hum.Sit = true
						end
						
						if LA.Parent ~= nil and RA.Parent ~= nil then
							local LPos = (LA.CFrame * CFrame.new(0, -1, 0)).p
							local RPos = (RA.CFrame * CFrame.new(0, -1, 0)).p
							if Rise == true then
								if Size < 0.6 then
									Size = Size + 0.05
								else
									Size = Size + 0.1
								end
								if Size >= 2.2 then
									Rise = false
								end
							else
								if Size > 2.1 then
									Size = Size - 0.05
								else
									Size = Size - 0.1
								end
								if Size <= 0.5 then
									Rise = true
								end
							end
							Ball.Size = Vector3.new(Size, Size, Size)
							Ball.CFrame = CFrame.new(LPos:Lerp(RPos, 0.5), Targ.Position) * CFrame.new(0, 0, -2.2)
							LightNum = LightNum + 1
							makeLightning(LightMod, Ball.Position, Targ.Position, 0.2, 4, 50, 1, LightNum)
						elseif Ball.Parent ~= nil then
							Ball:Destroy()
						end
						
						if LS and LS.Parent == Torso then
							LS.C0 = CFrame.new(Vector3.new(-1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(-1.5, 0.5, 1)).p))
						end
						if RS and RS.Parent == Torso then
							RS.C0 = CFrame.new(Vector3.new(1.5, 0.5, 0), Torso.CFrame:pointToObjectSpace((Targ.CFrame or Torso.CFrame * CFrame.new(1.5, 0.5, 1)).p))
						end
						RunService.Heartbeat:wait()
					end

					coroutine.resume(coroutine.create(function()
						for i = 0.5, 1, 0.1 do
							for i2,v in pairs(LightMod:GetChildren()) do
								--v.Light.Range = 6-(i*5)
								v.Transparency = i
							end
							wait(1/30)
						end
						LightMod:Destroy()
					end))
					
					if BP and BP.Parent ~= nil then
						BP:Destroy()
					end
					
					if Ang and Ang.Parent ~= nil then
						Ang:Destroy()
					end
					
					pcall(function() Ball:Destroy() end)
				end
			end)
		end))
	end)
end

function Add(Obj)
	if Obj:IsA("BasePart") and not Objects[Obj] and not (Obj.Name == "Base" and Obj.ClassName == "Part") then
		Objects[Obj] = Obj:GetMass()
		Obj.Changed:connect(function(P)
			if P:lower() == "size" and Objects[Obj] and Obj.Parent ~= nil then
				Objects[Obj] = Obj:GetMass()
			end
		end)
	end
end

function Rem(Obj)
	if Objects[Obj] then
		Objects[Obj] = nil
	end
end

function Recursion(Obj)
	ypcall(function()
		Add(Obj)
		if #Obj:GetChildren() > 0 then
			for _,v in pairs(Obj:GetChildren()) do 
				Recursion(v)
			end
		end
	end)
end

Workspace.DescendantAdded:connect(function(Obj)
	Add(Obj)
end)

Workspace.DescendantRemoving:connect(function(Obj)
	Rem(Obj)
end)

for _,v in pairs(Workspace:GetChildren()) do
	Recursion(v)
end

Start()

if LP.Name == PlrName then
	LP.CharacterAdded:connect(Start)
end

local verlet = {}
verlet.step_time = 1 / 50
verlet.gravity = Vector3.new(0, -10, 0)

local char = game.Players.LocalPlayer.Character
local torso = char:WaitForChild("Torso")
local parts = {}
local render = game:GetService("RunService").RenderStepped

wait(2)

local point = {}
local link = {}
local rope = {}

local function ccw(A,B,C)
    return (C.y-A.y) * (B.x-A.x) > (B.y-A.y) * (C.x-A.x)
end

local function intersect(A,B,C,D)
    return ccw(A,C,D) ~= ccw(B,C,D) and ccw(A,B,C) ~= ccw(A,B,D)
end

local function vec2(v)
	return Vector2.new(v.x, v.z)
end

function point:step()
	if not self.fixed then
		local derivative = (self.position - self.last_position) * 0.95
		self.last_position = self.position
		self.position = self.position + derivative + (self.velocity * verlet.step_time ^ 2)
		--[[local torsoP = torso.CFrame * CFrame.new(-1, 0, 0.5)
		local torsoE = torso.CFrame * CFrame.new(1, 0, 0.5)
		local pointE = self.position + torso.CFrame.lookVector * 100
		local doIntersect = intersect(vec2(torsoP.p), vec2(torsoE.p), vec2(self.position), vec2(pointE))
		if not doIntersect then
			self.postition = self.position - torso.CFrame.lookVector * 10
		end]]
	end
end

function link:step()
	for i = 1, 1 do
		local distance = self.point1.position - self.point2.position
		local magnitude = distance.magnitude
		local differance = (self.length - magnitude) / magnitude
		local translation = ((self.point1.fixed or self.point2.fixed) and 1 or 0.6) * distance * differance
		if not self.point1.fixed then
			self.point1.position = self.point1.position + translation
		end
		if not self.point2.fixed then
			self.point2.position = self.point2.position - translation
		end
	end
end

function verlet.new(class, a, b, c)
	if class == "Point" then
		local new = {}
		setmetatable(new, {__index = point})
		new.class = class
		new.position = a or Vector3.new()
		new.last_position = new.position
		new.velocity = verlet.gravity
		new.fixed = false
		return new
	elseif class == "Link" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.point1 = a
		new.point2 = b
		new.length = c or (a.position - b.position).magnitude
		return new
	elseif class == "Rope" then
		local new = {}
		setmetatable(new, {__index = link})
		new.class = class
		new.start_point = a
		new.finish_point = b
		new.points = {}
		new.links = {}
		local inc = (b - a) / 10
		for i = 0, 10 do
			table.insert(new.points, verlet.new("Point", a + (i * inc)))
		end
		for i = 2, #new.points do
			table.insert(new.links, verlet.new("Link", new.points[i - 1], new.points[i]))
		end
		return new
	end
end

local tris = {}
local triParts = {}

local function GetDiscoColor(hue)
 local section = hue % 1 * 3
 local secondary = 0.5 * math.pi * (section % 1)
 if section < 1 then
  return Color3.new(0, 0, 0)
 elseif section < 2 then
  return Color3.new(0, 0, 0)
 else
  return Color3.new(0, 0, 0)
 end
end

local function setupPart(part)
	part.Anchored = true
	part.FormFactor = 3
	part.CanCollide = false
	part.TopSurface = 10
	part.BottomSurface = 10
	part.LeftSurface = 10
	part.RightSurface = 10
	part.FrontSurface = 10
	part.BackSurface = 10
	part.Material = "Neon"
	local m = Instance.new("SpecialMesh", part)
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.2, 1, 1)
	return part
end

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x,  right.y, top.y, back.y, right.z, top.z, back.z)
end

local function drawTri(parent, a, b, c)
	local this = {}
	local mPart1 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	local mPart2 = table.remove(triParts, 1) or setupPart(Instance.new("Part"))
	function this:Set(a, b, c)
		local ab, bc, ca = b-a, c-b, a-c
		local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
		local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
		local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
		local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
		if edg1 < edg2 then
			if edg1 >= edg3 then		
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		else
			if edg2 < edg3 then
				a, b, c = b, c, a
				ab, bc, ca = bc, ca, ab
				abm = bcm
			else
				a, b, c = c, a, b
				ab, bc, ca = ca, ab, bc
				abm = cam
			end
		end
	 
		local len1 = -ca:Dot(ab)/abm
		local len2 = abm - len1
		local width = (ca + ab.unit*len1).magnitude
	 
		local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
	 
		if len1 > 0.2 then
			mPart1.Parent = parent
			mPart1.Size = Vector3.new(0.2, width, len1)
			mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
		else
			mPart1.Parent = nil
		end
		
		if len2 > 0.2 then
			mPart2.Parent = parent
			mPart2.Size = Vector3.new(0.2, width, len2)
			mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
		else
			mPart2.Parent = nil
		end	
	end
	function this:SetProperty(prop, value)
		mPart1[prop] = value
		mPart2[prop] = value
	end
	this:Set(a, b, c)
	function this:Destroy()
		mPart1:Destroy()
		mPart2:Destroy()
	end
	this.p1 = mPart1
	this.p2 = mPart2
	this.p1.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p1.CFrame.Y * 0.5 + time())))
	this.p2.BrickColor = BrickColor.new(GetDiscoColor(math.noise(0.5, 0.5, this.p2.CFrame.Y * 0.5 + time())))
	return this
end

function verlet.draw(object, id)
	if object.class == "Point" then
		local part = parts[id]
		part.BrickColor = BrickColor.new(107, 0, 107)
		part.Transparency = 0
		part.formFactor = 3
		part.Anchored = true
		part.CanCollide = false
		part.TopSurface = 0
		part.BottomSurface = 0
		part.Size = Vector3.new(0.35, 0.35, 0.35)
		part.Material = "Neon"
		part.CFrame = CFrame.new(object.position)
		part.Parent = torso
		return part
	elseif object.class == "Link" then
		local part = parts[id]
		local dist = (object.point1.position - object.point2.position).magnitude
		part.Size = Vector3.new(0.2, 0.2, dist)
		part.CFrame = CFrame.new(object.point1.position, object.point2.position) * CFrame.new(0, 0, dist * -0.5)
		part.Parent = torso
		return part
	end
end

function verlet.clear()
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Part" then
			v:Destroy()
		end
	end
end

local points = {}
local links = {}

for x = 0, 2 do
	points[x] = {}
	for y = 0, 3 do
		points[x][y] = verlet.new("Point", torso.Position + Vector3.new(x * 0.8 - 2, 2 - y * 0.8, 5 + y * 0.4))
		points[x][y].fixed = y == 0
	end
end

for x = 1, 2 do
	for y = 0, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x - 1][y], 1 + y * 0.08)
	end
end

for x = 0, 2 do
	for y = 1, 3 do
		links[#links + 1] = verlet.new("Link", points[x][y], points[x][y - 1], 1.2 + y * 0.03)
	end
end

render:connect(function()
	for x = 0, 2 do
		for y = 0, 3 do
			if y == 0 then
				points[x][y].position = (torso.CFrame * CFrame.new(x * 1 - 1, 1, 0.5)).p
			else
				points[x][y]:step()
			end
		end
	end
	for i = 1, #links do
		links[i]:step()
	end
	for i = 1, #tris do
		triParts[#triParts + 1] = tris[i].p1
		triParts[#triParts + 1] = tris[i].p2
	end
	tris = {}
	for x = 1, 2 do
		for y = 1, 3 do
			tris[#tris + 1] = drawTri(torso, points[x - 1][y - 1].position, points[x - 1][y].position, points[x][y - 1].position)
			tris[#tris + 1] = drawTri(torso, points[x][y].position, points[x - 1][y].position, points[x][y - 1].position)
		end
	end
end)