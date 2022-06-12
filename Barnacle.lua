
--Barnacle Monster on the wall not he roof its everywhere! -YoungWarlock
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "barnacle"
x1 = Instance.new("Humanoid", m)
x1.Name = "BarnacleX"
x1.NameOcclusion = Enum.NameOcclusion.NoOcclusion
x1.Health = 100
x1.MaxHealth = 100
x1.WalkSpeed = 16
m1 = Instance.new("Model")
m1.Name = "Added script for a map this is added on"
m1.Parent = m
s1 = script:clone()
s2 = script:clone()
s2.Name = "Ragdoll"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
print("Hello world!")

Character = script.Parent
Humanoid = Character.Humanoid
Torso = Character.Torso

function OnDeath()
	print("Death")--  HAHA
        wait(0.00000001)
        Humanoid.Parent = nil
	if Torso then
		local Head = Character:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Character
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
	end
end

Humanoid.Died:connect(OnDeath)

]===]
s2.Parent = s1
s3 = script:clone()
s3.Name = "(READ ME)"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRun"
so3.Value = [===[
I did not copy this model from no body. Don't copy this no matter what! If you do I'll hunt you down and tilt your head around. This script is good with war,guns, (ect.)
This is just a message about not to copy this.
Anyways, enjoy this script at your place!:D
]===]
s3.Parent = s1
s1.Name = "RealRagdoll Made by Supersonic20905659"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRun"
so1.Value = [===[
print("Ragdoll Physics Loaded")
function OnEntered(Player)
	while Player.Character == nil do 
		wait()
	end
	wait(1)
	Player.Changed:connect(function(Property)
		if Property == "Character" then
			if Player.Character then
				local Mods = script:GetChildren()
				for X = 1, # Mods do
					if Mods[X].className == "Script" or Mods[X].className == "LocalScript" then
						local S = Mods[X]:Clone()
						S.Disabled = false
						S.Parent = Player.Character
					end
				end
			end
		end
	end)
	local Mods = script:GetChildren()
	for X = 1, # Mods do
		if Mods[X].className == "Script" or Mods[X].className == "LocalScript" then
			local S = Mods[X]:Clone()
			S.Disabled = false
			S.Parent = Player.Character
		end
	end
end
game.Players.ChildAdded:connect(OnEntered)
]===]
s1.Parent = m1
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright red")
p1.Name = "Head"
p1.CFrame = CFrame.new(17, 17, -4.30000019, -1, -0, 0, -0, -1, 0, -0, -0, 1)
p1.Anchored = true
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(4, 2.4000001, 3.80000043)
p1.BackSurface = Enum.SurfaceType.Weld
p1.BottomSurface = Enum.SurfaceType.Weld
p1.FrontSurface = Enum.SurfaceType.Weld
p1.LeftSurface = Enum.SurfaceType.Weld
p1.RightSurface = Enum.SurfaceType.Weld
p1.TopSurface = Enum.SurfaceType.Weld
s4 = script:clone()
s4.Name = "Script"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
function onTouched(hit)
if hit.Parent ~= nil then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
if hit.Parent:findFirstChild("Torso") ~= nil then

local bp = Instance.new("BodyPosition")
bp.D = 10000
bp.P = 10000
bp.maxForce = Vector3.new(000, 3800, 000)
bp.Parent = hit.Parent.Torso
bp.position = hit.Parent.Torso.Position + Vector3.new(0, 50, 0)

wait(30)

bp:remove()

end
end
end
end

script.Parent.Touched:connect(onTouched)

]===]
s4.Parent = p1
s5 = script:clone()
s5.Name = "NameScript"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human == nil) then return end 

human.Parent.Name= "Currently being Digested"

end 

script.Parent.Touched:connect(onTouch) 

]===]
s5.Parent = p1
s6 = script:clone()
s7 = script:clone()
s7.Name = "Ragdoll"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRun"
so7.Value = [===[
Character = script.Parent
Torso = Character.Torso
if Character then
	if Torso then
		Humanoid = Character:findFirstChild("Humanoid")
		Zombie = Character:findFirstChild("Zombie")
		if Humanoid ~= nil then
		Humanoid.PlatformStand = true
		end

		if Zombie ~= nil then
		Zombie.PlatformStand = true
		end

		local Head = Character:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Character
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
	end
end

]===]
s7.Parent = s6
s6.Name = "Ragdoll"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRun"
so6.Value = [===[
function onTouch(part) 
	local humanoid = part.Parent:findFirstChild("Humanoid")

	if humanoid ~= nil and part.Parent:findFirstChild("Ragdoll") == nil then
	script.Ragdoll:Clone().Parent = humanoid.Parent
	end
end

script.Parent.Touched:connect(onTouch)

]===]
s6.Parent = p1
s8 = script:clone()
s8.Name = "Hat Remover"
s8.Disabled = false
so8 = Instance.new("StringValue", s8)
so8.Name = "forCustomRun"
so8.Value = [===[
function onTouched(hit) 
	local d = hit.Parent:GetChildren() 
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i]:remove() 
		end 
	end
end 

script.Parent.Touched:connect(onTouched) 
]===]
s8.Parent = p1
s9 = script:clone()
s9.Name = "limb"
s9.Disabled = false
so9 = Instance.new("StringValue", s9)
so9.Name = "forCustomRun"
so9.Value = [===[
function onTouched(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil then
local ll = part.Parent:findFirstChild("")
local rl = part.Parent:findFirstChild("")
local la = part.Parent:findFirstChild("Left Arm")
local ra = part.Parent:findFirstChild("Right Arm")
ll:remove()
rl:remove()
la:remove()
ra:remove()
end
end
script.Parent.Touched:connect(onTouched)
]===]
s9.Parent = p1
x2 = Instance.new("Sound", p1)
x2.Name = "Thunder"
x2.Pitch = 3
x2.SoundId = "http://www.roblox.com/asset/?id=87127566"
x2.Volume = 1
x2.Looped = false
x2.PlayOnRemove = false
s10 = script:clone()
s10.Name = "Script"
s10.Disabled = false
so10 = Instance.new("StringValue", s10)
so10.Name = "forCustomRun"
so10.Value = [===[
function x(hit)
script.Parent.GlassSound:Play()
scriptPlay()
end

script.Parent.Touched:connect(x)
]===]
s10.Parent = p1
s11 = script:clone()
s11.Name = "Script"
s11.Disabled = false
so11 = Instance.new("StringValue", s11)
so11.Name = "forCustomRun"
so11.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s11.Parent = p1
s12 = script:clone()
s12.Name = "Script"
s12.Disabled = false
so12 = Instance.new("StringValue", s12)
so12.Name = "forCustomRun"
so12.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s12.Parent = p1
s13 = script:clone()
s13.Name = "Script"
s13.Disabled = false
so13 = Instance.new("StringValue", s13)
so13.Name = "forCustomRun"
so13.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s13.Parent = p1
s14 = script:clone()
s14.Name = "Script"
s14.Disabled = false
so14 = Instance.new("StringValue", s14)
so14.Name = "forCustomRun"
so14.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s14.Parent = p1
s15 = script:clone()
s15.Name = "Script"
s15.Disabled = false
so15 = Instance.new("StringValue", s15)
so15.Name = "forCustomRun"
so15.Value = [===[
--[[ A script that makes you trip on touch. ]]--

function onTouch(hit)
	if hit.Parent:findFirstChild("Humanoid") then
		hit.Parent.Humanoid.Sit = true
	end
end
script.Parent.Touched:connect(onTouch)
]===]
s15.Parent = p1
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=35231406"
b1.TextureId = "http://www.roblox.com/asset/?id=15418623"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(4, 2.4000001, 3.79999995)
x3 = Instance.new("Sound", p1)
x3.Name = "Thunder"
x3.Pitch = 1
x3.SoundId = "http://www.roblox.com/asset/?id=131237241"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = true
s16 = script:clone()
s16.Name = "Electric Brick"
s16.Disabled = false
so16 = Instance.new("StringValue", s16)
so16.Name = "forCustomRun"
so16.Value = [===[
function stick(x, y)

	weld = Instance.new("Weld") 



	weld.Part0 = x

	weld.Part1 = y



	local HitPos = x.Position



	local CJ = CFrame.new(HitPos) 

	local C0 = x.CFrame:inverse() *CJ 

	local C1 = y.CFrame:inverse() * CJ 



	weld.C0 = C0 

	weld.C1 = C1 

	

	weld.Parent = x

end



function onTouched(part)

	local h = part.Parent:findFirstChild("Humanoid") or part.Parent:findFirstChild("Zombie")

	if h~=nil then

wait(0.001)
h.Health = 30
children = h.Parent:children()
part.Parent:findFirstChild("Head").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Torso").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Left Arm").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Right Arm").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Left Leg").BrickColor = BrickColor.new(26) 
part.Parent:findFirstChild("Right Leg").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Head").Anchored = true
part.Parent:findFirstChild("Torso").Anchored = true
part.Parent:findFirstChild("Left Arm").Anchored = true
part.Parent:findFirstChild("Right Arm").Anchored = true
part.Parent:findFirstChild("Left Leg").Anchored = true 
part.Parent:findFirstChild("Right Leg").Anchored = true

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Anchored = false
part.Parent:findFirstChild("Torso").Anchored = false
part.Parent:findFirstChild("Left Arm").Anchored = false
part.Parent:findFirstChild("Right Arm").Anchored = false
part.Parent:findFirstChild("Left Leg").Anchored = false
part.Parent:findFirstChild("Right Leg").Anchored = false

	for i=1,#children do

		if(children[i].className == "Part" and children[i].Name ~= "Torso") then stick(children[i], h.Parent.Torso) end

		if(children[i].className == "Hat") then stick(children[i].Handle, h.Parent.Torso) end

	end

	end


end



script.Parent.Touched:connect(onTouched)

]===]
s16.Parent = p1
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Institutional white")
p2.Name = "Head"
p2.CFrame = CFrame.new(17.7000008, 19.3999996, -4.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.Anchored = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(10.1999998, 2.4000001, 12.9999971)
p2.BackSurface = Enum.SurfaceType.Weld
p2.BottomSurface = Enum.SurfaceType.Weld
p2.FrontSurface = Enum.SurfaceType.Weld
p2.LeftSurface = Enum.SurfaceType.Weld
p2.RightSurface = Enum.SurfaceType.Weld
p2.TopSurface = Enum.SurfaceType.Weld
s17 = script:clone()
s17.Name = "Script"
s17.Disabled = false
so17 = Instance.new("StringValue", s17)
so17.Name = "forCustomRun"
so17.Value = [===[
print("Hello world!")
function onT(part)
        part.BrickColor = BrickColor.new()
	wait(0.1)
	part.Transparency = 15431
	wait(0.1)
	part.Transparency = 5411
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 524542
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 52452433
	wait(0.1)
	part.Transparency = 52435667
	wait(0.1)
	part.Transparency = 54256789
	wait(0.1)
	part.Transparency = 65278900
	wait(0.1)
	part.Transparency = 54239542
	wait(0.1)
	part.Transparency = 5425432
	wait(0.1)
	part.Transparency = 5425425
	wait(0.1)
	part.Transparency = 5425465
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 5243542
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 5425424
	wait(0.1)
        part.Parent = nil
end
script.Parent.Touched:connect(onT) 

]===]
s17.Parent = p2
s18 = script:clone()
s18.Name = "Script"
s18.Disabled = false
so18 = Instance.new("StringValue", s18)
so18.Name = "forCustomRun"
so18.Value = [===[
--[[ A script that makes you trip on touch. ]]--

function onTouch(hit)
	if hit.Parent:findFirstChild("Humanoid") then
		hit.Parent.Humanoid.Sit = true
	end
end
script.Parent.Touched:connect(onTouch)
]===]
s18.Parent = p2
s19 = script:clone()
s19.Name = "Script"
s19.Disabled = false
so19 = Instance.new("StringValue", s19)
so19.Name = "forCustomRun"
so19.Value = [===[
function onTouched(hit)
if hit.Parent ~= nil then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
if hit.Parent:findFirstChild("Torso") ~= nil then

local bp = Instance.new("BodyPosition")
bp.D = 10000
bp.P = 10000
bp.maxForce = Vector3.new(000, 3800, 000)
bp.Parent = hit.Parent.Torso
bp.position = hit.Parent.Torso.Position + Vector3.new(0, 50, 0)

wait(30)

bp:remove()

end
end
end
end

script.Parent.Touched:connect(onTouched)

]===]
s19.Parent = p2
s20 = script:clone()
s20.Name = "Script"
s20.Disabled = false
so20 = Instance.new("StringValue", s20)
so20.Name = "forCustomRun"
so20.Value = [===[
print("Hello world!")
function onT(part)
        part.BrickColor = BrickColor.new()
	wait(0.1)
	part.Transparency = 15431
	wait(0.1)
	part.Transparency = 5411
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 542542
	wait(0.1)
	part.Transparency = 524542
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 52452433
	wait(0.1)
	part.Transparency = 52435667
	wait(0.1)
	part.Transparency = 54256789
	wait(0.1)
	part.Transparency = 65278900
	wait(0.1)
	part.Transparency = 54239542
	wait(0.1)
	part.Transparency = 5425432
	wait(0.1)
	part.Transparency = 5425425
	wait(0.1)
	part.Transparency = 5425465
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 5243542
	wait(0.1)
	part.Transparency = 5423542
	wait(0.1)
	part.Transparency = 5425424
	wait(0.1)
        part.Parent = nil
end
script.Parent.Touched:connect(onT) 

]===]
s20.Parent = p2
s21 = script:clone()
s22 = script:clone()
s22.Name = "Erase"
s22.Disabled = false
so22 = Instance.new("StringValue", s22)
so22.Name = "forCustomRun"
so22.Value = [===[
--nothing....lol

]===]
s22.Parent = s21
s21.Name = "Script"
s21.Disabled = false
so21 = Instance.new("StringValue", s21)
so21.Name = "forCustomRun"
so21.Value = [===[
function Sink(hit)
v = Instance.new("BodyVelocity")
scr = script:findFirstChild("Erase"):clone()
scr.Parent = hit
v.maxForce = v.maxForce*9999999
v.velocity = Vector3.new(0, 1, 0)
v.Parent = hit
end

script.Parent.Touched:connect(Sink)

]===]
s21.Parent = p2
s23 = script:clone()
s23.Name = "Script"
s23.Disabled = false
so23 = Instance.new("StringValue", s23)
so23.Name = "forCustomRun"
so23.Value = [===[
function onTouched(hit)

	if (hit.Parent:findFirstChild("Humanoid") ~= nil) then 
	local f = Instance.new("BodyForce") 
	f.Parent = hit.Parent.Torso
	f.force = Vector3.new(0,2000,0)
	end 
end
script.Parent.Touched:connect(onTouched)
]===]
s23.Parent = p2
s24 = script:clone()
s24.Name = "Script"
s24.Disabled = false
so24 = Instance.new("StringValue", s24)
so24.Name = "forCustomRun"
so24.Value = [===[
function onTouched(part)
	local h = part.Parent:findFirstChild("Head")
		if h~=nil then
		h.face.Texture = script.Parent.Decal.Texture

	end
 end

 script.Parent.Touched:connect(onTouched)

]===]
s24.Parent = p2
d1 = Instance.new("Decal", p2)
d1.Texture = "http://www.roblox.com/asset/?id=45394439"
d1.Face = Enum.NormalId.Bottom
s25 = script:clone()
s25.Name = "NameScript"
s25.Disabled = false
so25 = Instance.new("StringValue", s25)
so25.Name = "forCustomRun"
so25.Value = [===[
function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human == nil) then return end 

human.Parent.Name= "Currently being Digested"

end 

script.Parent.Touched:connect(onTouch) 

]===]
s25.Parent = p2
s26 = script:clone()
s26.Name = "Script"
s26.Disabled = false
so26 = Instance.new("StringValue", s26)
so26.Name = "forCustomRun"
so26.Value = [===[
--[[ A script that makes you trip on touch. ]]--

function onTouch(hit)
	if hit.Parent:findFirstChild("Humanoid") then
		hit.Parent.Humanoid.Sit = true
	end
end
script.Parent.Touched:connect(onTouch)
]===]
s26.Parent = p2
s27 = script:clone()
s28 = script:clone()
s28.Name = "Ragdoll"
s28.Disabled = false
so28 = Instance.new("StringValue", s28)
so28.Name = "forCustomRun"
so28.Value = [===[
Character = script.Parent
Torso = Character.Torso
if Character then
	if Torso then
		Humanoid = Character:findFirstChild("Humanoid")
		Zombie = Character:findFirstChild("Zombie")
		if Humanoid ~= nil then
		Humanoid.PlatformStand = true
		end

		if Zombie ~= nil then
		Zombie.PlatformStand = true
		end

		local Head = Character:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Character
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
	end
end

]===]
s28.Parent = s27
s27.Name = "Ragdoll"
s27.Disabled = false
so27 = Instance.new("StringValue", s27)
so27.Name = "forCustomRun"
so27.Value = [===[
function onTouch(part) 
	local humanoid = part.Parent:findFirstChild("Humanoid")

	if humanoid ~= nil and part.Parent:findFirstChild("Ragdoll") == nil then
	script.Ragdoll:Clone().Parent = humanoid.Parent
	end
end

script.Parent.Touched:connect(onTouch)

]===]
s27.Parent = p2
s29 = script:clone()
s29.Name = "Script"
s29.Disabled = false
so29 = Instance.new("StringValue", s29)
so29.Name = "forCustomRun"
so29.Value = [===[
function onTouched(part)
anchor(part)
end

]===]
s29.Parent = p2
s30 = script:clone()
s30.Name = "Anchor"
s30.Disabled = false
so30 = Instance.new("StringValue", s30)
so30.Name = "forCustomRun"
so30.Value = [===[
local debounce = false


function onHit(hit)
	local human = hit.Parent:findFirstChild("Humanoid")
	if (human ~= nil) and debounce == false then

                debounce = true
script.Parent.Anchored = true

                debounce = false
	end
end


script.Parent.Touched:connect(onHit)

]===]
s30.Parent = p2
s31 = script:clone()
s31.Name = "Script"
s31.Disabled = false
so31 = Instance.new("StringValue", s31)
so31.Name = "forCustomRun"
so31.Value = [===[
[[[ExtremeScriptMaker]]
function touch(part)
LA=part.Parent:FindFirstChild("Left Arm")
LL=part.Parent:FindFirstChild("Left Leg")
RA=part.Parent:FindFirstChild("Right Arm")
RL=part.Parent:FindFirstChild("Right Leg")
top = part.Parent:FindFirstChild("Head")
local h = part.Parent:FindFirstChild("Humanoid")
if (h ~= nil) then
LA.Anchored = true
LL.Anchored=true
RA.Anchored=true
RL.Anchored=true
top.Anchored=true
part.Parent.Torso.Anchored = true
h.WalkSpeed = 0
end
end
script.Parent.Touched:connect(touch)








]===]
s31.Parent = p2
s32 = script:clone()
s32.Name = "Hat Remover"
s32.Disabled = false
so32 = Instance.new("StringValue", s32)
so32.Name = "forCustomRun"
so32.Value = [===[
function onTouched(hit) 
	local d = hit.Parent:GetChildren() 
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i]:remove() 
		end 
	end
end 

script.Parent.Touched:connect(onTouched) 
]===]
s32.Parent = p2
x4 = Instance.new("Sound", p2)
x4.Name = "Thunder"
x4.Pitch = 0.10000000149012
x4.SoundId = "http://www.roblox.com/asset/?id=28492762"
x4.Volume = 1
x4.Looped = true
x4.PlayOnRemove = true
s33 = script:clone()
s33.Name = "Script"
s33.Disabled = false
so33 = Instance.new("StringValue", s33)
so33.Name = "forCustomRun"
so33.Value = [===[
function x(hit)
script.Parent.GlassSound:Play()
script:remove()
end

script.Parent.Touched:connect(x)
]===]
s33.Parent = p2
s34 = script:clone()
s34.Name = "Script"
s34.Disabled = false
so34 = Instance.new("StringValue", s34)
so34.Name = "forCustomRun"
so34.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s34.Parent = p2
s35 = script:clone()
s35.Name = "Script"
s35.Disabled = false
so35 = Instance.new("StringValue", s35)
so35.Name = "forCustomRun"
so35.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s35.Parent = p2
s36 = script:clone()
s36.Name = "Script"
s36.Disabled = false
so36 = Instance.new("StringValue", s36)
so36.Name = "forCustomRun"
so36.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s36.Parent = p2
s37 = script:clone()
s37.Name = "Script"
s37.Disabled = false
so37 = Instance.new("StringValue", s37)
so37.Name = "forCustomRun"
so37.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s37.Parent = p2
x5 = Instance.new("Sound", p2)
x5.Name = "Thunder"
x5.Pitch = 1
x5.SoundId = "http://www.roblox.com/asset/?id=131237241"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = true
s38 = script:clone()
s38.Name = "Electric Brick"
s38.Disabled = false
so38 = Instance.new("StringValue", s38)
so38.Name = "forCustomRun"
so38.Value = [===[
function stick(x, y)

	weld = Instance.new("Weld") 



	weld.Part0 = x

	weld.Part1 = y



	local HitPos = x.Position



	local CJ = CFrame.new(HitPos) 

	local C0 = x.CFrame:inverse() *CJ 

	local C1 = y.CFrame:inverse() * CJ 



	weld.C0 = C0 

	weld.C1 = C1 

	

	weld.Parent = x

end



function onTouched(part)

	local h = part.Parent:findFirstChild("Humanoid") or part.Parent:findFirstChild("Zombie")

	if h~=nil then

wait(0.001)
h.Health = 30
children = h.Parent:children()
part.Parent:findFirstChild("Head").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Torso").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Left Arm").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Right Arm").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Left Leg").BrickColor = BrickColor.new(26) 
part.Parent:findFirstChild("Right Leg").BrickColor = BrickColor.new(26)
part.Parent:findFirstChild("Head").Anchored = true
part.Parent:findFirstChild("Torso").Anchored = true
part.Parent:findFirstChild("Left Arm").Anchored = true
part.Parent:findFirstChild("Right Arm").Anchored = true
part.Parent:findFirstChild("Left Leg").Anchored = true 
part.Parent:findFirstChild("Right Leg").Anchored = true

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Anchored = false
part.Parent:findFirstChild("Torso").Anchored = false
part.Parent:findFirstChild("Left Arm").Anchored = false
part.Parent:findFirstChild("Right Arm").Anchored = false
part.Parent:findFirstChild("Left Leg").Anchored = false
part.Parent:findFirstChild("Right Leg").Anchored = false

	for i=1,#children do

		if(children[i].className == "Part" and children[i].Name ~= "Torso") then stick(children[i], h.Parent.Torso) end

		if(children[i].className == "Hat") then stick(children[i].Handle, h.Parent.Torso) end

	end

	end


end



script.Parent.Touched:connect(onTouched)

]===]
s38.Parent = p2
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Lime green")
p3.Name = "Tounge"
p3.CFrame = CFrame.new(17, 11.000001, -4.4000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p3.Anchored = true
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 19.5999985, 0.200000003)
p3.BackSurface = Enum.SurfaceType.Weld
p3.BottomSurface = Enum.SurfaceType.Weld
p3.FrontSurface = Enum.SurfaceType.Weld
p3.LeftSurface = Enum.SurfaceType.Weld
p3.RightSurface = Enum.SurfaceType.Weld
p3.TopSurface = Enum.SurfaceType.Weld
b2 = Instance.new("CylinderMesh", p3)
b2.Name = "Mesh"
s39 = script:clone()
s39.Name = "WalkSpeed Changer "
s39.Disabled = false
so39 = Instance.new("StringValue", s39)
so39.Name = "forCustomRun"
so39.Value = [===[
debounce = true

function onTouched(hit)
	local h = hit.Parent:findFirstChild("Humanoid")
	if (h ~= nil and debounce == true) then
		debounce = false
		h.WalkSpeed = 0
		wait(1)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)
]===]
s39.Parent = p3
s40 = script:clone()
s40.Name = "Script"
s40.Disabled = false
so40 = Instance.new("StringValue", s40)
so40.Name = "forCustomRun"
so40.Value = [===[
function onTouched(hit)
if hit.Parent ~= nil then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
if hit.Parent:findFirstChild("Torso") ~= nil then

local bp = Instance.new("BodyPosition")
bp.D = 10000
bp.P = 10000
bp.maxForce = Vector3.new(000, 3800, 000)
bp.Parent = hit.Parent.Torso
bp.position = hit.Parent.Torso.Position + Vector3.new(0, 50, 0)

wait(30)

bp:remove()

end
end
end
end

script.Parent.Touched:connect(onTouched)

]===]
s40.Parent = p3
s41 = script:clone()
s41.Name = "Script"
s41.Disabled = false
so41 = Instance.new("StringValue", s41)
so41.Name = "forCustomRun"
so41.Value = [===[
function Sink(hit)
v = Instance.new("BodyVelocity")
scr = script:findFirstChild("Erase"):clone()
scr.Parent = hit
v.maxForce = v.maxForce*9999999
v.velocity = Vector3.new(0, 1, 0)
v.Parent = hit
end

script.Parent.Touched:connect(Sink)

]===]
s41.Parent = p3
s42 = script:clone()
s42.Name = "Script"
s42.Disabled = false
so42 = Instance.new("StringValue", s42)
so42.Name = "forCustomRun"
so42.Value = [===[
function onTouched(hit)

	if (hit.Parent:findFirstChild("Humanoid") ~= nil) then 
	local f = Instance.new("BodyForce") 
	f.Parent = hit.Parent.Torso
	f.force = Vector3.new(0,2000,0)
	end 
end
script.Parent.Touched:connect(onTouched)
]===]
s42.Parent = p3
s43 = script:clone()
s44 = script:clone()
s44.Name = "Erase"
s44.Disabled = false
so44 = Instance.new("StringValue", s44)
so44.Name = "forCustomRun"
so44.Value = [===[
--nothing....lol

]===]
s44.Parent = s43
s43.Name = "Script"
s43.Disabled = false
so43 = Instance.new("StringValue", s43)
so43.Name = "forCustomRun"
so43.Value = [===[
function Sink(hit)
v = Instance.new("BodyVelocity")
scr = script:findFirstChild("Erase"):clone()
scr.Parent = hit
v.maxForce = v.maxForce*9999999
v.velocity = Vector3.new(0, 1, 0)
v.Parent = hit
end

script.Parent.Touched:connect(Sink)

]===]
s43.Parent = p3
s45 = script:clone()
s45.Name = "NameScript"
s45.Disabled = false
so45 = Instance.new("StringValue", s45)
so45.Name = "forCustomRun"
so45.Value = [===[
function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human == nil) then return end 

human.Parent.Name= "Currently being Digested"

end 

script.Parent.Touched:connect(onTouch) 

]===]
s45.Parent = p3
s46 = script:clone()
s46.Name = "Script"
s46.Disabled = false
so46 = Instance.new("StringValue", s46)
so46.Name = "forCustomRun"
so46.Value = [===[
print("Hello world!")
function onT(part)
        part.BrickColor = BrickColor.new(47)
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
	part.Transparency = 0
	wait(10)
        part.Parent = nil
end
script.Parent.Touched:connect(onT) 

]===]
s46.Parent = p3
s47 = script:clone()
s47.Name = "Script"
s47.Disabled = false
so47 = Instance.new("StringValue", s47)
so47.Name = "forCustomRun"
so47.Value = [===[
--[[ A script that makes you trip on touch. ]]--

function onTouch(hit)
	if hit.Parent:findFirstChild("Humanoid") then
		hit.Parent.Humanoid.Sit = true
	end
end
script.Parent.Touched:connect(onTouch)
]===]
s47.Parent = p3
s48 = script:clone()
s48.Name = "Script"
s48.Disabled = false
so48 = Instance.new("StringValue", s48)
so48.Name = "forCustomRun"
so48.Value = [===[
debounce = true
block = script.Parent.Parent.Tounge

function onTouch(hit)
	if debounce == true then
		debounce	= false
		block.NormalSide1.Texture = ""
		block.NormalSide2.Texture = ""
		block.NormalSide3.Texture = ""
		block.NormalSide4.Texture = ""
		block.AlternateSide1.Texture = ""
		block.AlternateSide2.Texture = ""
		block.Transparency = 16787
		block.Sparkles.Enabled = false
		wait(0.5)
		block.Transparency = true
		block.Sparkles.Enabled = false
		wait(7.5)
		block.NormalSide1.Texture = ""
		block.NormalSide2.Texture = ""
		block.NormalSide3.Texture = ""
		block.NormalSide4.Texture = ""
		block.AlternateSide1.Texture = ""
		block.AlternateSide2.Texture = ""
		block.Transparency = 67578
		block.Cancolide = false
		debounce = false
	end
end

script.Parent.Touched:connect(onTouch)

]===]
s48.Parent = p3
x6 = Instance.new("Sound", p3)
x6.Name = "Thunder"
x6.Pitch = 0.10000000149012
x6.SoundId = "http://www.roblox.com/asset/?id=19284093"
x6.Volume = 1
x6.Looped = false
x6.PlayOnRemove = false
s49 = script:clone()
s49.Name = "Script"
s49.Disabled = false
so49 = Instance.new("StringValue", s49)
so49.Name = "forCustomRun"
so49.Value = [===[
function x(hit)
script.Parent.GlassSound:Play()
script:remove()
end

script.Parent.Touched:connect(x)
]===]
s49.Parent = p3
s50 = script:clone()
s50.Name = "Script"
s50.Disabled = false
so50 = Instance.new("StringValue", s50)
so50.Name = "forCustomRun"
so50.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s50.Parent = p3
s51 = script:clone()
s51.Name = "Script"
s51.Disabled = false
so51 = Instance.new("StringValue", s51)
so51.Name = "forCustomRun"
so51.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s51.Parent = p3
s52 = script:clone()
s52.Name = "Script"
s52.Disabled = false
so52 = Instance.new("StringValue", s52)
so52.Name = "forCustomRun"
so52.Value = [===[
local burner = script.Parent.Parent:FindFirstChild("Smoke")
if (burner ~= nil) then
wait(40.0)
burner.Parent.BrickColor = BrickColor.new(26)
wait(3.0)
burner.Parent = nil
end

]===]
s52.Parent = p3
s53 = script:clone()
s53.Name = "Script"
s53.Disabled = false
so53 = Instance.new("StringValue", s53)
so53.Name = "forCustomRun"
so53.Value = [===[
function onTouched(hit)
	script.Parent.Thunder:play()
end
script.Parent.Touched:connect(onTouched)
]===]
s53.Parent = p3
s54 = script:clone()
s54.Name = "Script"
s54.Disabled = false
so54 = Instance.new("StringValue", s54)
so54.Name = "forCustomRun"
so54.Value = [===[
--[[ A script that makes you trip on touch. ]]--

function onTouch(hit)
	if hit.Parent:findFirstChild("Humanoid") then
		hit.Parent.Humanoid.Sit = true
	end
end
script.Parent.Touched:connect(onTouch)
]===]
s54.Parent = p3
s55 = script:clone()
s55.Name = "Electric Brick"
s55.Disabled = false
so55 = Instance.new("StringValue", s55)
so55.Name = "forCustomRun"
so55.Value = [===[
function stick(x, y)

	weld = Instance.new("Weld") 



	weld.Part0 = x

	weld.Part1 = y



	local HitPos = x.Position



	local CJ = CFrame.new(HitPos) 

	local C0 = x.CFrame:inverse() *CJ 

	local C1 = y.CFrame:inverse() * CJ 



	weld.C0 = C0 

	weld.C1 = C1 

	

	weld.Parent = x

end



function onTouched(part)

	local h = part.Parent:findFirstChild("Humanoid") or part.Parent:findFirstChild("Zombie")

	if h~=nil then

wait(0.001)
h.Health = 100
children = h.Parent:children()
part.Parent:findFirstChild("Head").BrickColor = BrickColor.new("Lime green")
part.Parent:findFirstChild("Torso").BrickColor = BrickColor.new("Lime green")
part.Parent:findFirstChild("Left Arm").BrickColor = BrickColor.new("Lime green")
part.Parent:findFirstChild("Right Arm").BrickColor = BrickColor.new("Lime green")
part.Parent:findFirstChild("Left Leg").BrickColor = BrickColor.new("Lime green") 
part.Parent:findFirstChild("Right Leg").BrickColor = BrickColor.new("Lime green")
part.Parent:findFirstChild("Head").Anchored = true
part.Parent:findFirstChild("Torso").Anchored = true
part.Parent:findFirstChild("Left Arm").Anchored = true
part.Parent:findFirstChild("Right Arm").Anchored = true
part.Parent:findFirstChild("Left Leg").Anchored = true 
part.Parent:findFirstChild("Right Leg").Anchored = true

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 1
part.Parent:findFirstChild("Torso").Reflectance = 1
part.Parent:findFirstChild("Left Arm").Reflectance = 1
part.Parent:findFirstChild("Right Arm").Reflectance = 1
part.Parent:findFirstChild("Left Leg").Reflectance = 1
part.Parent:findFirstChild("Right Leg").Reflectance = 1

wait(0.1)

part.Parent:findFirstChild("Head").Reflectance = 0
part.Parent:findFirstChild("Torso").Reflectance = 0
part.Parent:findFirstChild("Left Arm").Reflectance = 0
part.Parent:findFirstChild("Right Arm").Reflectance = 0
part.Parent:findFirstChild("Left Leg").Reflectance = 0
part.Parent:findFirstChild("Right Leg").Reflectance = 0

wait(0.1)

part.Parent:findFirstChild("Head").Anchored = false
part.Parent:findFirstChild("Torso").Anchored = false
part.Parent:findFirstChild("Left Arm").Anchored = false
part.Parent:findFirstChild("Right Arm").Anchored = false
part.Parent:findFirstChild("Left Leg").Anchored = false
part.Parent:findFirstChild("Right Leg").Anchored = false

	for i=1,#children do

		if(children[i].className == "Part" and children[i].Name ~= "Torso") then stick(children[i], h.Parent.Torso) end

		if(children[i].className == "Hat") then stick(children[i].Handle, h.Parent.Torso) end

	end

	end


end



script.Parent.Touched:connect(onTouched)

]===]
s55.Parent = p3
s56 = script:clone()
s56.Name = "Jump"
s56.Disabled = false
so56 = Instance.new("StringValue", s56)
so56.Name = "forCustomRun"
so56.Value = [===[
function onTouched(part)
	if part.Parent ~= nil then
		local h = part.Parent:findFirstChild("Humanoid")
			if h~=nil then
				
h.Parent.Torso.Velocity=Vector3.new(0,70,0) -- change 1000 to how high you want it to make you go
wait(0.5)

			end			
	end
end

script.Parent.Touched:connect(onTouched)

]===]
s56.Parent = p3
m.Parent = game:service("Workspace")
m:MakeJoints()