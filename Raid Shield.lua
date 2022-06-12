--Made by N3xul
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Tool")
o2 = Instance.new("Script")
o3 = Instance.new("Script")
o5 = Instance.new("Script")
o6 = Instance.new("Script")
o8 = Instance.new("LocalScript")
o9 = Instance.new("LocalScript")
o10 = Instance.new("Sound")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Weld")
o14 = Instance.new("Weld")
o15 = Instance.new("Weld")
o16 = Instance.new("Weld")
o17 = Instance.new("Weld")
o18 = Instance.new("Weld")
o19 = Instance.new("Weld")
o20 = Instance.new("Weld")
o21 = Instance.new("Weld")
o22 = Instance.new("Weld")
o23 = Instance.new("Weld")
o24 = Instance.new("Weld")
o25 = Instance.new("Weld")
o26 = Instance.new("Weld")
o27 = Instance.new("Weld")
o28 = Instance.new("Weld")
o29 = Instance.new("Weld")
o30 = Instance.new("Weld")
o31 = Instance.new("Weld")
o32 = Instance.new("Weld")
o33 = Instance.new("Weld")
o34 = Instance.new("Weld")
o35 = Instance.new("Weld")
o36 = Instance.new("Weld")
o37 = Instance.new("Weld")
o38 = Instance.new("Weld")
o39 = Instance.new("Weld")
o40 = Instance.new("Weld")
o41 = Instance.new("Weld")
o42 = Instance.new("Weld")
o43 = Instance.new("Weld")
o44 = Instance.new("Weld")
o45 = Instance.new("Weld")
o46 = Instance.new("Weld")
o47 = Instance.new("Weld")
o48 = Instance.new("Weld")
o49 = Instance.new("Weld")
o50 = Instance.new("Weld")
o51 = Instance.new("Weld")
o52 = Instance.new("Weld")
o53 = Instance.new("Weld")
o54 = Instance.new("Weld")
o55 = Instance.new("Weld")
o56 = Instance.new("Weld")
o57 = Instance.new("Weld")
o58 = Instance.new("Weld")
o59 = Instance.new("Weld")
o60 = Instance.new("Weld")
o61 = Instance.new("Weld")
o62 = Instance.new("Weld")
o63 = Instance.new("Weld")
o64 = Instance.new("Weld")
o65 = Instance.new("Weld")
o66 = Instance.new("Weld")
o67 = Instance.new("Weld")
o68 = Instance.new("Weld")
o69 = Instance.new("Weld")
o70 = Instance.new("Weld")
o71 = Instance.new("Weld")
o72 = Instance.new("Weld")
o73 = Instance.new("Weld")
o74 = Instance.new("Weld")
o75 = Instance.new("Weld")
o76 = Instance.new("Weld")
o77 = Instance.new("Weld")
o78 = Instance.new("Weld")
o79 = Instance.new("Weld")
o80 = Instance.new("Weld")
o81 = Instance.new("Weld")
o82 = Instance.new("Weld")
o83 = Instance.new("Weld")
o84 = Instance.new("Weld")
o85 = Instance.new("Weld")
o86 = Instance.new("Weld")
o87 = Instance.new("Weld")
o88 = Instance.new("Weld")
o89 = Instance.new("Weld")
o90 = Instance.new("Weld")
o91 = Instance.new("Weld")
o92 = Instance.new("Weld")
o93 = Instance.new("Weld")
o94 = Instance.new("Weld")
o95 = Instance.new("Weld")
o96 = Instance.new("Weld")
o97 = Instance.new("Weld")
o98 = Instance.new("Weld")
o99 = Instance.new("Weld")
o100 = Instance.new("Weld")
o101 = Instance.new("Weld")
o102 = Instance.new("Weld")
o103 = Instance.new("Weld")
o104 = Instance.new("Weld")
o105 = Instance.new("Weld")
o106 = Instance.new("Weld")
o107 = Instance.new("Weld")
o108 = Instance.new("Weld")
o109 = Instance.new("Weld")
o110 = Instance.new("Weld")
o111 = Instance.new("Weld")
o112 = Instance.new("Weld")
o113 = Instance.new("Weld")
o114 = Instance.new("Weld")
o115 = Instance.new("Weld")
o116 = Instance.new("Weld")
o117 = Instance.new("Weld")
o118 = Instance.new("Weld")
o119 = Instance.new("Weld")
o120 = Instance.new("Weld")
o121 = Instance.new("Weld")
o122 = Instance.new("Weld")
o123 = Instance.new("Weld")
o124 = Instance.new("Weld")
o125 = Instance.new("Weld")
o126 = Instance.new("Weld")
o127 = Instance.new("Weld")
o128 = Instance.new("Weld")
o129 = Instance.new("Weld")
o130 = Instance.new("Weld")
o131 = Instance.new("Weld")
o132 = Instance.new("Weld")
o133 = Instance.new("Weld")
o134 = Instance.new("Weld")
o135 = Instance.new("Weld")
o136 = Instance.new("Weld")
o137 = Instance.new("Weld")
o138 = Instance.new("Weld")
o139 = Instance.new("Weld")
o140 = Instance.new("Weld")
o141 = Instance.new("Weld")
o142 = Instance.new("Weld")
o143 = Instance.new("Weld")
o144 = Instance.new("Weld")
o145 = Instance.new("Weld")
o146 = Instance.new("Weld")
o147 = Instance.new("Weld")
o148 = Instance.new("Weld")
o149 = Instance.new("Weld")
o150 = Instance.new("Weld")
o151 = Instance.new("Weld")
o152 = Instance.new("Weld")
o153 = Instance.new("Weld")
o154 = Instance.new("Weld")
o155 = Instance.new("Weld")
o156 = Instance.new("Weld")
o157 = Instance.new("Weld")
o158 = Instance.new("Weld")
o159 = Instance.new("Weld")
o160 = Instance.new("Weld")
o161 = Instance.new("Weld")
o162 = Instance.new("Weld")
o163 = Instance.new("Weld")
o164 = Instance.new("Weld")
o165 = Instance.new("Weld")
o166 = Instance.new("Weld")
o167 = Instance.new("Weld")
o168 = Instance.new("Weld")
o169 = Instance.new("Weld")
o170 = Instance.new("Weld")
o171 = Instance.new("Weld")
o172 = Instance.new("Weld")
o174 = Instance.new("LocalScript")
o175 = Instance.new("Part")
o176 = Instance.new("BlockMesh")
o178 = Instance.new("Script")
o179 = Instance.new("Part")
o180 = Instance.new("BlockMesh")
o182 = Instance.new("Script")
o183 = Instance.new("Part")
o184 = Instance.new("BlockMesh")
o186 = Instance.new("Script")
o187 = Instance.new("Part")
o188 = Instance.new("BlockMesh")
o190 = Instance.new("Script")
o191 = Instance.new("Part")
o192 = Instance.new("BlockMesh")
o194 = Instance.new("Script")
o195 = Instance.new("Part")
o196 = Instance.new("BlockMesh")
o198 = Instance.new("Script")
o199 = Instance.new("Part")
o200 = Instance.new("BlockMesh")
o202 = Instance.new("Script")
o203 = Instance.new("Part")
o204 = Instance.new("BlockMesh")
o206 = Instance.new("Script")
o207 = Instance.new("Part")
o208 = Instance.new("CylinderMesh")
o210 = Instance.new("Script")
o211 = Instance.new("Part")
o212 = Instance.new("CylinderMesh")
o214 = Instance.new("Script")
o215 = Instance.new("Part")
o216 = Instance.new("BlockMesh")
o218 = Instance.new("Script")
o219 = Instance.new("Part")
o220 = Instance.new("BlockMesh")
o222 = Instance.new("Script")
o223 = Instance.new("Part")
o224 = Instance.new("BlockMesh")
o226 = Instance.new("Script")
o227 = Instance.new("Part")
o228 = Instance.new("BlockMesh")
o230 = Instance.new("Script")
o231 = Instance.new("Part")
o232 = Instance.new("CylinderMesh")
o234 = Instance.new("Script")
o235 = Instance.new("Part")
o236 = Instance.new("CylinderMesh")
o238 = Instance.new("Script")
o239 = Instance.new("Part")
o240 = Instance.new("CylinderMesh")
o242 = Instance.new("Script")
o243 = Instance.new("Part")
o244 = Instance.new("BlockMesh")
o246 = Instance.new("Script")
o247 = Instance.new("Part")
o248 = Instance.new("BlockMesh")
o250 = Instance.new("Script")
o1.Name = "Raid Shield"
o1.Parent = mas
o1.GripForward = Vector3.new(0.00558485184, -0.980797648, -0.194948077)
o1.GripPos = Vector3.new(0, 0.899999976, -0.400000006)
o1.GripRight = Vector3.new(0.00111005409, -0.194944918, 0.980813563)
o1.GripUp = Vector3.new(0.999983788, 0.00569410156, 0)
o2.Name = "WeldArm"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
Tool = script.Parent;
local arms = nil
local torso = nil
local welds = {}

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.3, 0.1, 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-85))
welds[1] = weld1
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-1.15, 0.2, 0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
welds[2] = weld2
end
else
print("sh")
end
else
print("arms")
end
end

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
end
else
print("sh")
end
else
print("arms")
end
end
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)

end,o2)
end))
o3.Name = "Speed"
o3.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks go to TimeTicks for the code :^)

local tool = script.Parent
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:wait()
local human = char:WaitForChild('Humanoid')

tool.Equipped:connect(function()
	human.WalkSpeed = 9
end)

tool.Unequipped:connect(function()
	human.WalkSpeed = 16		-- Change to the default movement speed of your game 
end)
end,o3)
end))
o5.Name = "Script......Or is it..."
o5.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o5)
end))
o6.Name = "Welding"
o6.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o6)
end))
o8.Name = "BackupWeld"
o8.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o8)
end))
o9.Name = "BackupWeld"
o9.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o9)
end))
o10.Name = "Melee"
o10.Parent = o1
o10.Volume = 1
o11.Name = "Handle"
o11.Parent = o1
o11.Material = Enum.Material.DiamondPlate
o11.BrickColor = BrickColor.new("Dark stone grey")
o11.Transparency = 10
o11.Position = Vector3.new(-99.7895889, 3.11867809, -78.6689453)
o11.Rotation = Vector3.new(0.0129472474, 0.339142174, 89.8677673)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(3, 1, 3)
o11.CFrame = CFrame.new(-99.7895889, 3.11867809, -78.6689453, 0.00230778591, -0.999979913, 0.00591911329, 0.999997318, 0.00230648904, -0.000225968135, 0.000212311206, 0.005919619, 0.999982476)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.388235, 0.372549, 0.384314)
o11.Position = Vector3.new(-99.7895889, 3.11867809, -78.6689453)
o12.Parent = o11
o12.Scale = Vector3.new(1.29999995, 0.150000006, 0.400000006)
o12.MeshType = Enum.MeshType.Brick
o13.Parent = o11
o13.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o13.C1 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o13.Part0 = o11
o13.Part1 = o11
o14.Parent = o11
o14.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o14.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o14.Part0 = o11
o14.Part1 = o11
o15.Parent = o11
o15.C0 = CFrame.new(0, 0, 0, -0.00281608105, 0.999992788, -0.00253880024, 0.777905524, 0.00378608704, 0.628369749, 0.628374875, -0.000205338001, -0.777910471)
o15.C1 = CFrame.new(0, 0, 0, -0.00281608105, 0.999992788, -0.00253880024, 0.777905524, 0.00378608704, 0.628369749, 0.628374875, -0.000205338001, -0.777910471)
o15.Part0 = o11
o15.Part1 = o11
o16.Parent = o11
o16.C0 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o16.C1 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o16.Part0 = o11
o16.Part1 = o11
o17.Parent = o11
o17.C0 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o17.C1 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o17.Part0 = o11
o17.Part1 = o11
o18.Parent = o11
o18.C0 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o18.C1 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o18.Part0 = o11
o18.Part1 = o11
o19.Parent = o11
o19.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o19.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o19.Part0 = o11
o19.Part1 = o11
o20.Parent = o11
o20.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o20.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o20.Part0 = o11
o20.Part1 = o11
o21.Parent = o11
o21.C0 = CFrame.new(0, 0, 0, -0.0348095931, 0.999107838, -0.0239181127, 0.813149095, 0.0422281548, 0.580521286, 0.581012845, 0.000758746406, -0.813893557)
o21.C1 = CFrame.new(0, 0, 0, -0.0348095931, 0.999107838, -0.0239181127, 0.813149095, 0.0422281548, 0.580521286, 0.581012845, 0.000758746406, -0.813893557)
o21.Part0 = o11
o21.Part1 = o11
o22.Parent = o11
o22.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o22.C1 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o22.Part0 = o11
o22.Part1 = o11
o23.Parent = o11
o23.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o23.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o23.Part0 = o11
o23.Part1 = o11
o24.Parent = o11
o24.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o24.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o24.Part0 = o11
o24.Part1 = o11
o25.Parent = o11
o25.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o25.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o25.Part0 = o11
o25.Part1 = o11
o26.Parent = o11
o26.C0 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o26.C1 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o26.Part0 = o11
o26.Part1 = o11
o27.Parent = o11
o27.C0 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o27.C1 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o27.Part0 = o11
o27.Part1 = o11
o28.Parent = o11
o28.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o28.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o28.Part0 = o11
o28.Part1 = o11
o29.Parent = o11
o29.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o29.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o29.Part0 = o11
o29.Part1 = o11
o30.Parent = o11
o30.C0 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o30.C1 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o30.Part0 = o11
o30.Part1 = o11
o31.Parent = o11
o31.C0 = CFrame.new(0, 0, 0, -0.0348095931, 0.999107838, -0.0239181127, 0.813149095, 0.0422281548, 0.580521286, 0.581012845, 0.000758746406, -0.813893557)
o31.C1 = CFrame.new(0, 0, 0, -0.0348095931, 0.999107838, -0.0239181127, 0.813149095, 0.0422281548, 0.580521286, 0.581012845, 0.000758746406, -0.813893557)
o31.Part0 = o11
o31.Part1 = o11
o32.Parent = o11
o32.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o32.C1 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
o32.Part0 = o11
o32.Part1 = o11
o33.Parent = o11
o33.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o33.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o33.Part0 = o11
o33.Part1 = o11
o34.Parent = o11
o34.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o34.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o34.Part0 = o11
o34.Part1 = o11
o35.Parent = o11
o35.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o35.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o35.Part0 = o11
o35.Part1 = o11
o36.Parent = o11
o36.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o36.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o36.Part0 = o11
o36.Part1 = o11
o37.Parent = o11
o37.C0 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o37.C1 = CFrame.new(0, 0, 0, -0.743149042, -0.119914658, 0.658293724, 0.0412877724, 0.973718226, 0.223982304, -0.667851329, 0.193631589, -0.718666792)
o37.Part0 = o11
o37.Part1 = o11
o38.Parent = o11
o38.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o38.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o38.Part0 = o11
o38.Part1 = o11
o39.Parent = o11
o39.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o39.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o39.Part0 = o11
o39.Part1 = o11
o40.Parent = o11
o40.C0 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o40.C1 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o40.Part0 = o11
o40.Part1 = o11
o41.Parent = o11
o41.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, -1)
o41.C1 = CFrame.new(0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, -1)
o41.Part0 = o11
o41.Part1 = o11
o42.Parent = o11
o42.C0 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o42.C1 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o42.Part0 = o11
o42.Part1 = o11
o43.Parent = o11
o43.C0 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o43.C1 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o43.Part0 = o11
o43.Part1 = o11
o44.Parent = o11
o44.C0 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o44.C1 = CFrame.new(0, 0, 0, -1, -3.32096254e-021, 1.38037118e-021, 1.5658223e-021, -0.0565066971, 0.998402238, -3.23765621e-021, 0.998402238, 0.0565066971)
o44.Part0 = o11
o44.Part1 = o11
o45.Parent = o11
o45.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o45.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o45.Part0 = o11
o45.Part1 = o11
o46.Parent = o11
o46.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o46.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o46.Part0 = o11
o46.Part1 = o11
o47.Parent = o11
o47.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o47.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o47.Part0 = o11
o47.Part1 = o11
o48.Parent = o11
o48.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o48.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o48.Part0 = o11
o48.Part1 = o11
o49.Parent = o11
o49.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o49.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o49.Part0 = o11
o49.Part1 = o11
o50.Parent = o11
o50.C0 = CFrame.new(0, 0, 0, 0.0010458309, 0.999999762, -0.000402707199, 0.999998868, -0.0010458146, 7.19682357e-005, 7.18661104e-005, -0.000402781909, -0.999999106)
o50.C1 = CFrame.new(0, 0, 0, 0.0010458309, 0.999999762, -0.000402707199, 0.999998868, -0.0010458146, 7.19682357e-005, 7.18661104e-005, -0.000402781909, -0.999999106)
o50.Part0 = o11
o50.Part1 = o11
o51.Parent = o11
o51.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o51.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o51.Part0 = o11
o51.Part1 = o11
o52.Parent = o11
o52.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o52.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o52.Part0 = o11
o52.Part1 = o11
o53.Parent = o11
o53.C0 = CFrame.new(0, 0, 0, -2.30073929e-005, 1, 2.03549862e-005, 0.0429434776, 2.13384628e-005, -0.999077439, -0.999077439, -2.22027302e-005, -0.0429434776)
o53.C1 = CFrame.new(0, 0, 0, -2.30073929e-005, 1, 2.03549862e-005, 0.0429434776, 2.13384628e-005, -0.999077439, -0.999077439, -2.22027302e-005, -0.0429434776)
o53.Part0 = o11
o53.Part1 = o11
o54.Parent = o11
o54.C0 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o54.C1 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o54.Part0 = o11
o54.Part1 = o11
o55.Parent = o11
o55.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o55.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o55.Part0 = o11
o55.Part1 = o11
o56.Parent = o11
o56.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o56.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o56.Part0 = o11
o56.Part1 = o11
o57.Parent = o11
o57.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o57.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o57.Part0 = o11
o57.Part1 = o11
o58.Parent = o11
o58.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o58.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o58.Part0 = o11
o58.Part1 = o11
o59.Parent = o11
o59.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o59.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o59.Part0 = o11
o59.Part1 = o11
o60.Parent = o11
o60.C0 = CFrame.new(0, 0, 0, 0.0010458309, 0.999999762, -0.000402707199, 0.999998868, -0.0010458146, 7.19682357e-005, 7.18661104e-005, -0.000402781909, -0.999999106)
o60.C1 = CFrame.new(0, 0, 0, 0.0010458309, 0.999999762, -0.000402707199, 0.999998868, -0.0010458146, 7.19682357e-005, 7.18661104e-005, -0.000402781909, -0.999999106)
o60.Part0 = o11
o60.Part1 = o11
o61.Parent = o11
o61.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o61.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o61.Part0 = o11
o61.Part1 = o11
o62.Parent = o11
o62.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o62.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o62.Part0 = o11
o62.Part1 = o11
o63.Parent = o11
o63.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o63.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o63.Part0 = o11
o63.Part1 = o11
o64.Parent = o11
o64.C0 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o64.C1 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o64.Part0 = o11
o64.Part1 = o11
o65.Parent = o11
o65.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o65.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o65.Part0 = o11
o65.Part1 = o11
o66.Parent = o11
o66.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o66.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o66.Part0 = o11
o66.Part1 = o11
o67.Parent = o11
o67.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o67.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o67.Part0 = o11
o67.Part1 = o11
o68.Parent = o11
o68.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o68.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o68.Part0 = o11
o68.Part1 = o11
o69.Parent = o11
o69.C0 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o69.C1 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o69.Part0 = o11
o69.Part1 = o11
o70.Parent = o11
o70.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o70.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o70.Part0 = o11
o70.Part1 = o11
o71.Parent = o11
o71.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o71.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o71.Part0 = o11
o71.Part1 = o11
o72.Parent = o11
o72.C0 = CFrame.new(0, 0, 0, 0.000364780426, 0.999999821, 0.000445812941, -0.677439272, 0.000575065613, -0.735578537, -0.735578656, -3.3646822e-005, 0.677439332)
o72.C1 = CFrame.new(0, 0, 0, 0.000364780426, 0.999999821, 0.000445812941, -0.677439272, 0.000575065613, -0.735578537, -0.735578656, -3.3646822e-005, 0.677439332)
o72.Part0 = o11
o72.Part1 = o11
o73.Parent = o11
o73.C0 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o73.C1 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o73.Part0 = o11
o73.Part1 = o11
o74.Parent = o11
o74.C0 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o74.C1 = CFrame.new(0, 0, 0, 0.0566511191, 0.997976422, 0.0288740825, 0.772669017, -0.0621398091, 0.631760359, 0.632276118, -0.0134798214, -0.774625838)
o74.Part0 = o11
o74.Part1 = o11
o75.Parent = o11
o75.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o75.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o75.Part0 = o11
o75.Part1 = o11
o76.Parent = o11
o76.C0 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o76.C1 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o76.Part0 = o11
o76.Part1 = o11
o77.Parent = o11
o77.C0 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o77.C1 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o77.Part0 = o11
o77.Part1 = o11
o78.Parent = o11
o78.C0 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o78.C1 = CFrame.new(0, 0, 0, 0.651609182, 0.0902429447, -0.753168404, -0.205237836, 0.976839125, -0.0605202578, 0.730262816, 0.194014043, 0.655038655)
o78.Part0 = o11
o78.Part1 = o11
o79.Parent = o11
o79.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o79.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o79.Part0 = o11
o79.Part1 = o11
o80.Parent = o11
o80.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o80.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o80.Part0 = o11
o80.Part1 = o11
o81.Parent = o11
o81.C0 = CFrame.new(0, 0, 0, -0.00281608105, 0.999992788, -0.00253880024, 0.777905524, 0.00378608704, 0.628369749, 0.628374875, -0.000205338001, -0.777910471)
o81.C1 = CFrame.new(0, 0, 0, -0.00281608105, 0.999992788, -0.00253880024, 0.777905524, 0.00378608704, 0.628369749, 0.628374875, -0.000205338001, -0.777910471)
o81.Part0 = o11
o81.Part1 = o11
o82.Parent = o11
o82.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o82.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o82.Part0 = o11
o82.Part1 = o11
o83.Parent = o11
o83.C0 = CFrame.new(0, 0, 0, 0.000364780426, 0.999999821, 0.000445812941, -0.677439272, 0.000575065613, -0.735578537, -0.735578656, -3.3646822e-005, 0.677439332)
o83.C1 = CFrame.new(0, 0, 0, 0.000364780426, 0.999999821, 0.000445812941, -0.677439272, 0.000575065613, -0.735578537, -0.735578656, -3.3646822e-005, 0.677439332)
o83.Part0 = o11
o83.Part1 = o11
o84.Parent = o11
o84.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o84.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o84.Part0 = o11
o84.Part1 = o11
o85.Parent = o11
o85.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o85.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o85.Part0 = o11
o85.Part1 = o11
o86.Parent = o11
o86.C0 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o86.C1 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o86.Part0 = o11
o86.Part1 = o11
o87.Parent = o11
o87.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o87.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o87.Part0 = o11
o87.Part1 = o11
o88.Parent = o11
o88.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o88.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o88.Part0 = o11
o88.Part1 = o11
o89.Parent = o11
o89.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o89.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o89.Part0 = o11
o89.Part1 = o11
o90.Parent = o11
o90.C0 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o90.C1 = CFrame.new(0, 0, 0, 0.652175844, 0.0800921395, -0.753825486, -0.198732078, 0.977687955, -0.0680569708, 0.731555223, 0.194194242, 0.653541386)
o90.Part0 = o11
o90.Part1 = o11
o91.Parent = o11
o91.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o91.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o91.Part0 = o11
o91.Part1 = o11
o92.Parent = o11
o92.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o92.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o92.Part0 = o11
o92.Part1 = o11
o93.Parent = o11
o93.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o93.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o93.Part0 = o11
o93.Part1 = o11
o94.Parent = o11
o94.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o94.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o94.Part0 = o11
o94.Part1 = o11
o95.Parent = o11
o95.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o95.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o95.Part0 = o11
o95.Part1 = o11
o96.Parent = o11
o96.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o96.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o96.Part0 = o11
o96.Part1 = o11
o97.Parent = o11
o97.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o97.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o97.Part0 = o11
o97.Part1 = o11
o98.Parent = o11
o98.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o98.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o98.Part0 = o11
o98.Part1 = o11
o99.Parent = o11
o99.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o99.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o99.Part0 = o11
o99.Part1 = o11
o100.Parent = o11
o100.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o100.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o100.Part0 = o11
o100.Part1 = o11
o101.Parent = o11
o101.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o101.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o101.Part0 = o11
o101.Part1 = o11
o102.Parent = o11
o102.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o102.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o102.Part0 = o11
o102.Part1 = o11
o103.Parent = o11
o103.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o103.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o103.Part0 = o11
o103.Part1 = o11
o104.Parent = o11
o104.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o104.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o104.Part0 = o11
o104.Part1 = o11
o105.Parent = o11
o105.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o105.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o105.Part0 = o11
o105.Part1 = o11
o106.Parent = o11
o106.C0 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o106.C1 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o106.Part0 = o11
o106.Part1 = o11
o107.Parent = o11
o107.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o107.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o107.Part0 = o11
o107.Part1 = o11
o108.Parent = o11
o108.C0 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o108.C1 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o108.Part0 = o11
o108.Part1 = o11
o109.Parent = o11
o109.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o109.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o109.Part0 = o11
o109.Part1 = o11
o110.Parent = o11
o110.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o110.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o110.Part0 = o11
o110.Part1 = o11
o111.Parent = o11
o111.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o111.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o111.Part0 = o11
o111.Part1 = o11
o112.Parent = o11
o112.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o112.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o112.Part0 = o11
o112.Part1 = o11
o113.Parent = o11
o113.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o113.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o113.Part0 = o11
o113.Part1 = o11
o114.Parent = o11
o114.C0 = CFrame.new(0, 0, 0, 0.0368781686, 0.999210715, -0.0147648752, -0.924462199, 0.0397226214, 0.379199028, 0.379486203, -0.000334605575, 0.925197363)
o114.C1 = CFrame.new(0, 0, 0, 0.0368781686, 0.999210715, -0.0147648752, -0.924462199, 0.0397226214, 0.379199028, 0.379486203, -0.000334605575, 0.925197363)
o114.Part0 = o11
o114.Part1 = o11
o115.Parent = o11
o115.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o115.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o115.Part0 = o11
o115.Part1 = o11
o116.Parent = o11
o116.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o116.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o116.Part0 = o11
o116.Part1 = o11
o117.Parent = o11
o117.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o117.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o117.Part0 = o11
o117.Part1 = o11
o118.Parent = o11
o118.C0 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o118.C1 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o118.Part0 = o11
o118.Part1 = o11
o119.Parent = o11
o119.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o119.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o119.Part0 = o11
o119.Part1 = o11
o120.Parent = o11
o120.C0 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o120.C1 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o120.Part0 = o11
o120.Part1 = o11
o121.Parent = o11
o121.C0 = CFrame.new(0, 0, 0, 0.0368781686, 0.999210715, -0.0147648752, -0.924462199, 0.0397226214, 0.379199028, 0.379486203, -0.000334605575, 0.925197363)
o121.C1 = CFrame.new(0, 0, 0, 0.0368781686, 0.999210715, -0.0147648752, -0.924462199, 0.0397226214, 0.379199028, 0.379486203, -0.000334605575, 0.925197363)
o121.Part0 = o11
o121.Part1 = o11
o122.Parent = o11
o122.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o122.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o122.Part0 = o11
o122.Part1 = o11
o123.Parent = o11
o123.C0 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o123.C1 = CFrame.new(0, 0, 0, 0.420907021, -0.393627256, 0.817248642, 0.350479901, 0.901547968, 0.253722817, -0.836661041, 0.17963542, 0.517426252)
o123.Part0 = o11
o123.Part1 = o11
o124.Parent = o11
o124.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o124.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o124.Part0 = o11
o124.Part1 = o11
o125.Parent = o11
o125.C0 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o125.C1 = CFrame.new(0, 0, 0, -0.00621816702, 0.999971211, -0.00436157035, 0.818588376, 0.00759532209, 0.57433027, 0.574346781, 9.50656727e-007, -0.818611979)
o125.Part0 = o11
o125.Part1 = o11
o126.Parent = o11
o126.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o126.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o126.Part0 = o11
o126.Part1 = o11
o127.Parent = o11
o127.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o127.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o127.Part0 = o11
o127.Part1 = o11
o128.Parent = o11
o128.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o128.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o128.Part0 = o11
o128.Part1 = o11
o129.Parent = o11
o129.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o129.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o129.Part0 = o11
o129.Part1 = o11
o130.Parent = o11
o130.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o130.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o130.Part0 = o11
o130.Part1 = o11
o131.Parent = o11
o131.C0 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o131.C1 = CFrame.new(0, 0, 0, -0.000350285205, 0.999984205, 0.00561657501, 0.0490538925, 0.00562699744, -0.998780131, -0.998795927, -7.43430865e-005, -0.0490550995)
o131.Part0 = o11
o131.Part1 = o11
o132.Parent = o11
o132.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o132.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o132.Part0 = o11
o132.Part1 = o11
o133.Parent = o11
o133.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o133.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o133.Part0 = o11
o133.Part1 = o11
o134.Parent = o11
o134.C0 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o134.C1 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o134.Part0 = o11
o134.Part1 = o11
o135.Parent = o11
o135.C0 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o135.C1 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o135.Part0 = o11
o135.Part1 = o11
o136.Parent = o11
o136.C0 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o136.C1 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o136.Part0 = o11
o136.Part1 = o11
o137.Parent = o11
o137.C0 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o137.C1 = CFrame.new(0, 0, 0, -0.746743143, -0.0787770823, -0.660431027, -0.157797813, 0.985594392, 0.0608574711, 0.646122873, 0.14965947, -0.748416543)
o137.Part0 = o11
o137.Part1 = o11
o138.Parent = o11
o138.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o138.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o138.Part0 = o11
o138.Part1 = o11
o139.Parent = o11
o139.C0 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o139.C1 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o139.Part0 = o11
o139.Part1 = o11
o140.Parent = o11
o140.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o140.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o140.Part0 = o11
o140.Part1 = o11
o141.Parent = o11
o141.C0 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o141.C1 = CFrame.new(0, 0, 0, -0.00567108439, 0.999983788, 0.000511397258, 0.995942295, 0.00569409644, -0.0898121595, -0.0898136348, -1.02768665e-008, -0.995958447)
o141.Part0 = o11
o141.Part1 = o11
o142.Parent = o11
o142.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o142.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o142.Part0 = o11
o142.Part1 = o11
o143.Parent = o11
o143.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o143.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o143.Part0 = o11
o143.Part1 = o11
o144.Parent = o11
o144.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o144.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o144.Part0 = o11
o144.Part1 = o11
o145.Parent = o11
o145.C0 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o145.C1 = CFrame.new(0, 0, 0, -0.60509342, -0.0860248879, 0.791493297, 0.10370408, 0.977159381, 0.185485691, -0.78937149, 0.194317266, -0.582351565)
o145.Part0 = o11
o145.Part1 = o11
o146.Parent = o11
o146.C0 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o146.C1 = CFrame.new(0, 0, 0, -0.699303985, -0.178106919, -0.692280233, -0.261375844, 0.965108931, 0.0157286245, 0.66532445, 0.19194442, -0.721457362)
o146.Part0 = o11
o146.Part1 = o11
o147.Parent = o11
o147.C0 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o147.C1 = CFrame.new(0, 0, 0, -0.693859875, -0.0513591021, 0.718276501, 0.105251431, 0.979508698, 0.171711668, -0.712376952, 0.194743395, -0.674236178)
o147.Part0 = o11
o147.Part1 = o11
o148.Parent = o11
o148.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o148.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o148.Part0 = o11
o148.Part1 = o11
o149.Parent = o11
o149.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o149.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o149.Part0 = o11
o149.Part1 = o11
o150.Parent = o11
o150.C0 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o150.C1 = CFrame.new(0, 0, 0, 0.590874553, 0.626105011, -0.508783102, -0.592037857, 0.764921367, 0.253745288, 0.548050284, 0.151287138, 0.822650433)
o150.Part0 = o11
o150.Part1 = o11
o151.Parent = o11
o151.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o151.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o151.Part0 = o11
o151.Part1 = o11
o152.Parent = o11
o152.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o152.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o152.Part0 = o11
o152.Part1 = o11
o153.Parent = o11
o153.C0 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o153.C1 = CFrame.new(0, 0, 0, 0.00389144337, 0.999985397, -0.00394230895, -0.698883891, 0.00553936278, 0.715212286, 0.715222359, -2.79877931e-005, 0.698894978)
o153.Part0 = o11
o153.Part1 = o11
o154.Parent = o11
o154.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o154.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o154.Part0 = o11
o154.Part1 = o11
o155.Parent = o11
o155.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o155.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o155.Part0 = o11
o155.Part1 = o11
o156.Parent = o11
o156.C0 = CFrame.new(0, 0, 0, -2.30073929e-005, 1, 2.03549862e-005, 0.0429434776, 2.13384628e-005, -0.999077439, -0.999077439, -2.22027302e-005, -0.0429434776)
o156.C1 = CFrame.new(0, 0, 0, -2.30073929e-005, 1, 2.03549862e-005, 0.0429434776, 2.13384628e-005, -0.999077439, -0.999077439, -2.22027302e-005, -0.0429434776)
o156.Part0 = o11
o156.Part1 = o11
o157.Parent = o11
o157.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o157.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o157.Part0 = o11
o157.Part1 = o11
o158.Parent = o11
o158.C0 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o158.C1 = CFrame.new(0, 0, 0, -0.00342345005, 0.999984205, -0.004509144, 0.626414776, 0.00565933622, 0.779468894, 0.779481888, -0.000156120397, -0.626423836)
o158.Part0 = o11
o158.Part1 = o11
o159.Parent = o11
o159.C0 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o159.C1 = CFrame.new(0, 0, 0, -0.00318251969, 0.999983788, 0.0047208881, 0.558934212, 0.0056934366, -0.8291924, -0.829205871, -2.55066055e-007, -0.558943272)
o159.Part0 = o11
o159.Part1 = o11
o160.Parent = o11
o160.C0 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o160.C1 = CFrame.new(0, 0, 0, 0.00385662611, 0.999983788, 0.00418827683, -0.677403092, 0.0056934366, -0.735590219, -0.73560214, -2.55066055e-007, 0.67741406)
o160.Part0 = o11
o160.Part1 = o11
o161.Parent = o11
o161.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o161.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o161.Part0 = o11
o161.Part1 = o11
o162.Parent = o11
o162.C0 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o162.C1 = CFrame.new(0, 0, 0, -0.00442864839, 0.999983788, -0.00357803097, 0.777867079, 0.0056934366, 0.628403366, 0.628413558, -2.55066055e-007, -0.777879715)
o162.Part0 = o11
o162.Part1 = o11
o163.Parent = o11
o163.C0 = CFrame.new(0, 0, 0, 4.47034836e-005, 0.999999881, -3.36471567e-005, 0.999999881, -4.4465065e-005, 9.40759055e-005, 9.40744067e-005, -3.36513476e-005, -0.999999762)
o163.C1 = CFrame.new(0, 0, 0, 4.47034836e-005, 0.999999881, -3.36471567e-005, 0.999999881, -4.4465065e-005, 9.40759055e-005, 9.40744067e-005, -3.36513476e-005, -0.999999762)
o163.Part0 = o11
o163.Part1 = o11
o164.Parent = o11
o164.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o164.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o164.Part0 = o11
o164.Part1 = o11
o165.Parent = o11
o165.C0 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o165.C1 = CFrame.new(0, 0, 0, 0.884612679, -0.249881461, -0.393725216, 0.143391162, 0.949163556, -0.280227751, 0.443733305, 0.191436335, 0.875472844)
o165.Part0 = o11
o165.Part1 = o11
o166.Parent = o11
o166.C0 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o166.C1 = CFrame.new(0, 0, 0, 0.00335929054, 0.999985397, -0.00440457743, -0.602398396, 0.00553936278, 0.798175216, 0.798186541, -2.79877931e-005, 0.602407992)
o166.Part0 = o11
o166.Part1 = o11
o167.Parent = o11
o167.C0 = CFrame.new(0, 0, 0, -4.37113883e-008, 0.994572878, 0.10404209, 0, 0.10404209, -0.994572878, -1, -4.34741629e-008, -4.54782434e-009)
o167.C1 = CFrame.new(0, 0, 0, -4.37113883e-008, 0.994572878, 0.10404209, 0, 0.10404209, -0.994572878, -1, -4.34741629e-008, -4.54782434e-009)
o167.Part0 = o11
o167.Part1 = o11
o168.Parent = o11
o168.C0 = CFrame.new(0, 0, 0, 0.214727581, 0.0492296815, -0.975432694, 0.0118080815, -0.998786926, -0.0478090607, -0.976602614, -0.00125204702, -0.215048343)
o168.C1 = CFrame.new(0, 0, 0, 0.214727581, 0.0492296815, -0.975432694, 0.0118080815, -0.998786926, -0.0478090607, -0.976602614, -0.00125204702, -0.215048343)
o168.Part0 = o11
o168.Part1 = o11
o169.Parent = o11
o169.C0 = CFrame.new(0, 0, 0, 0.214352086, 0.0509989746, -0.97542417, 0.0110258944, -0.998698771, -0.0497929119, -0.976694226, -8.17127438e-005, -0.214635447)
o169.C1 = CFrame.new(0, 0, 0, 0.214352086, 0.0509989746, -0.97542417, 0.0110258944, -0.998698771, -0.0497929119, -0.976694226, -8.17127438e-005, -0.214635447)
o169.Part0 = o11
o169.Part1 = o11
o170.Parent = o11
o170.C0 = CFrame.new(0, 0, 0, -4.37113883e-008, 1, 1.7686687e-005, 0, -1.7686687e-005, 1, 1, 4.37113883e-008, 7.73109658e-013)
o170.C1 = CFrame.new(0, 0, 0, -4.37113883e-008, 1, 1.7686687e-005, 0, -1.7686687e-005, 1, 1, 4.37113883e-008, 7.73109658e-013)
o170.Part0 = o11
o170.Part1 = o11
o171.Parent = o11
o171.C0 = CFrame.new(0, 0, 0, -0.000221946277, 0.999970078, -0.00773138646, 0.00412997603, 0.00773230381, 0.999961615, 0.999991298, 0.000189931598, -0.00413158536)
o171.C1 = CFrame.new(0, 0, 0, -0.000221946277, 0.999970078, -0.00773138646, 0.00412997603, 0.00773230381, 0.999961615, 0.999991298, 0.000189931598, -0.00413158536)
o171.Part0 = o11
o171.Part1 = o11
o172.Parent = o11
o172.C0 = CFrame.new(0, 0, 0, -0.00215536635, 0.999952197, 0.00954336021, 0.0047583878, -0.00953299087, 0.999943256, 0.999986172, 0.00220066961, -0.00473764539)
o172.C1 = CFrame.new(0, 0, 0, -0.00215536635, 0.999952197, 0.00954336021, 0.0047583878, -0.00953299087, 0.999943256, 0.999986172, 0.00220066961, -0.00473764539)
o172.Part0 = o11
o172.Part1 = o11
o174.Name = "Crouch"
o174.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end,o174)
end))
o175.Parent = o1
o175.Material = Enum.Material.DiamondPlate
o175.BrickColor = BrickColor.new("Black")
o175.Position = Vector3.new(-101.254181, 3.60204005, -76.3040771)
o175.Rotation = Vector3.new(0.219408035, 60.3389091, -0.186552033)
o175.FormFactor = Enum.FormFactor.Symmetric
o175.Size = Vector3.new(2, 1, 1)
o175.CFrame = CFrame.new(-101.254181, 3.60204005, -76.3040771, 0.494866014, 0.00161126337, 0.868967772, 7.16753275e-005, 0.999998212, -0.00189504167, -0.868969321, 0.00100007514, 0.494865)
o175.BottomSurface = Enum.SurfaceType.Smooth
o175.TopSurface = Enum.SurfaceType.Smooth
o175.Color = Color3.new(0.105882, 0.164706, 0.207843)
o175.Position = Vector3.new(-101.254181, 3.60204005, -76.3040771)
o176.Parent = o175
o176.Scale = Vector3.new(1, 1, 0.200000003)
o178.Name = "Script......Or is it..."
o178.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o178)
end))
o179.Parent = o1
o179.Material = Enum.Material.DiamondPlate
o179.BrickColor = BrickColor.new("Black")
o179.Position = Vector3.new(-100.398987, 1.671785, -79.6660156)
o179.Rotation = Vector3.new(158.504318, 89.635231, 21.5423584)
o179.FormFactor = Enum.FormFactor.Symmetric
o179.Size = Vector3.new(3, 3.13763571, 1)
o179.CFrame = CFrame.new(-100.398987, 1.671785, -79.6660156, 0.00592601206, -0.00233938056, 0.999979734, -0.000821631518, -0.99999702, -0.00233455189, 0.999982178, -0.000807780307, -0.00592791615)
o179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o179.BottomSurface = Enum.SurfaceType.Smooth
o179.TopSurface = Enum.SurfaceType.Smooth
o179.Color = Color3.new(0.105882, 0.164706, 0.207843)
o179.Position = Vector3.new(-100.398987, 1.671785, -79.6660156)
o180.Parent = o179
o180.Scale = Vector3.new(1, 1, 0.200000003)
o182.Name = "Script......Or is it..."
o182.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o182)
end))
o183.Parent = o1
o183.Material = Enum.Material.DiamondPlate
o183.BrickColor = BrickColor.new("Black")
o183.Position = Vector3.new(-100.509346, 2.08307409, -81.5649414)
o183.Rotation = Vector3.new(-0.474162191, -74.659668, -0.536256373)
o183.FormFactor = Enum.FormFactor.Symmetric
o183.Size = Vector3.new(1, 3.94611359, 1)
o183.CFrame = CFrame.new(-100.509346, 2.08307409, -81.5649414, 0.264540642, 0.00247602421, -0.964371443, -0.00137858198, 0.999996722, 0.00218932773, 0.964373529, 0.000750298903, 0.264543176)
o183.BottomSurface = Enum.SurfaceType.Smooth
o183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o183.TopSurface = Enum.SurfaceType.Smooth
o183.Color = Color3.new(0.105882, 0.164706, 0.207843)
o183.Position = Vector3.new(-100.509346, 2.08307409, -81.5649414)
o184.Parent = o183
o184.Scale = Vector3.new(1, 1, 0.200000003)
o186.Name = "Script......Or is it..."
o186.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o186)
end))
o187.Parent = o1
o187.Material = Enum.Material.DiamondPlate
o187.BrickColor = BrickColor.new("Black")
o187.Position = Vector3.new(-100.486595, 2.09500599, -77.7651367)
o187.Rotation = Vector3.new(-179.477814, -75.338768, -179.504623)
o187.FormFactor = Enum.FormFactor.Symmetric
o187.Size = Vector3.new(1, 3.98584795, 1)
o187.CFrame = CFrame.new(-100.486595, 2.09500599, -77.7651367, -0.253094077, 0.00218828628, -0.967439234, -0.000171275737, 0.999997377, 0.00230673864, 0.967441678, 0.000749520666, -0.253093034)
o187.BottomSurface = Enum.SurfaceType.Smooth
o187.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o187.TopSurface = Enum.SurfaceType.Smooth
o187.Color = Color3.new(0.105882, 0.164706, 0.207843)
o187.Position = Vector3.new(-100.486595, 2.09500599, -77.7651367)
o188.Parent = o187
o188.Scale = Vector3.new(1, 1, 0.200000003)
o190.Name = "Script......Or is it..."
o190.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o190)
end))
o191.Parent = o1
o191.Material = Enum.Material.DiamondPlate
o191.BrickColor = BrickColor.new("Black")
o191.Position = Vector3.new(-100.603439, 4.45635176, -81.5626221)
o191.Rotation = Vector3.new(43.165081, -68.7553177, 45.0448151)
o191.FormFactor = Enum.FormFactor.Symmetric
o191.Size = Vector3.new(1, 1, 1)
o191.CFrame = CFrame.new(-100.603439, 4.45635176, -81.5626221, 0.256020933, -0.256421745, -0.932041526, 0.0656497926, 0.96656239, -0.247885853, 0.964439452, 0.00227563409, 0.264294237)
o191.BottomSurface = Enum.SurfaceType.Smooth
o191.TopSurface = Enum.SurfaceType.Smooth
o191.Color = Color3.new(0.105882, 0.164706, 0.207843)
o191.Position = Vector3.new(-100.603439, 4.45635176, -81.5626221)
o192.Parent = o191
o192.Scale = Vector3.new(1, 1, 0.200000003)
o194.Name = "Script......Or is it..."
o194.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o194)
end))
o195.Parent = o1
o195.Material = Enum.Material.DiamondPlate
o195.BrickColor = BrickColor.new("Black")
o195.Position = Vector3.new(-100.57151, 4.44813585, -77.7628174)
o195.Rotation = Vector3.new(135.637115, -69.2456894, 133.580795)
o195.FormFactor = Enum.FormFactor.Symmetric
o195.Size = Vector3.new(1, 1, 1)
o195.CFrame = CFrame.new(-100.57151, 4.44813585, -77.7628174, -0.244288534, -0.256700516, -0.935108542, -0.0671602786, 0.966488421, -0.247769669, 0.967374146, 0.00227485667, -0.253342092)
o195.BottomSurface = Enum.SurfaceType.Smooth
o195.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o195.Color = Color3.new(0.105882, 0.164706, 0.207843)
o195.Position = Vector3.new(-100.57151, 4.44813585, -77.7628174)
o196.Parent = o195
o196.Scale = Vector3.new(1, 1, 0.200000003)
o198.Name = "Script......Or is it..."
o198.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o198)
end))
o199.Parent = o1
o199.Material = Enum.Material.Foil
o199.BrickColor = BrickColor.new("Smoky grey")
o199.Reflectance = 0.40000000596046
o199.Transparency = 0.40000000596046
o199.Position = Vector3.new(-100.394241, 3.74059606, -79.6655273)
o199.Rotation = Vector3.new(158.503647, 89.635231, 21.5428905)
o199.FormFactor = Enum.FormFactor.Symmetric
o199.Size = Vector3.new(3, 1, 1)
o199.CFrame = CFrame.new(-100.394241, 3.74059606, -79.6655273, 0.00592571916, -0.00233932841, 0.999979734, -0.000819247158, -0.99999702, -0.00233451393, 0.999982178, -0.000805396819, -0.00592761766)
o199.BottomSurface = Enum.SurfaceType.Smooth
o199.TopSurface = Enum.SurfaceType.Smooth
o199.Color = Color3.new(0.356863, 0.364706, 0.411765)
o199.Position = Vector3.new(-100.394241, 3.74059606, -79.6655273)
o200.Parent = o199
o200.Scale = Vector3.new(1.10000002, 1, 0.0500000007)
o202.Name = "Script......Or is it..."
o202.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o202)
end))
o203.Parent = o1
o203.Material = Enum.Material.Foil
o203.BrickColor = BrickColor.new("Smoky grey")
o203.Reflectance = 0.40000000596046
o203.Transparency = 0.40000000596046
o203.Position = Vector3.new(-100.493057, 4.47084808, -79.7647705)
o203.Rotation = Vector3.new(-91.2659988, 75.1300583, -88.6428452)
o203.FormFactor = Enum.FormFactor.Symmetric
o203.Size = Vector3.new(3, 1, 1)
o203.CFrame = CFrame.new(-100.493057, 4.47084808, -79.7647705, 0.00607808726, 0.256553829, 0.966510832, -0.000797968416, -0.966527104, 0.256563187, 0.999981284, -0.00233065826, -0.00566991465)
o203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o203.BottomSurface = Enum.SurfaceType.Smooth
o203.TopSurface = Enum.SurfaceType.Smooth
o203.Color = Color3.new(0.356863, 0.364706, 0.411765)
o203.Position = Vector3.new(-100.493057, 4.47084808, -79.7647705)
o204.Parent = o203
o204.Scale = Vector3.new(1.10000002, 1, 0.0500000007)
o206.Name = "Script......Or is it..."
o206.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o206)
end))
o207.Parent = o1
o207.Material = Enum.Material.DiamondPlate
o207.BrickColor = BrickColor.new("Smoky grey")
o207.Position = Vector3.new(-100.746216, 2.30404711, -82.1223145)
o207.Rotation = Vector3.new(-179.840836, -30.3387413, -179.822357)
o207.FormFactor = Enum.FormFactor.Symmetric
o207.Size = Vector3.new(1, 4.18670988, 1)
o207.CFrame = CFrame.new(-100.746216, 2.30404711, -82.1223145, -0.863050163, 0.00267595798, -0.505111277, 0.00169743923, 0.999995708, 0.00239743525, 0.505115509, 0.00121171109, -0.863050938)
o207.BottomSurface = Enum.SurfaceType.Smooth
o207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o207.TopSurface = Enum.SurfaceType.Smooth
o207.Color = Color3.new(0.356863, 0.364706, 0.411765)
o207.Position = Vector3.new(-100.746216, 2.30404711, -82.1223145)
o208.Parent = o207
o208.Scale = Vector3.new(0.150000006, 1.10000002, 0.150000006)
o210.Name = "Script......Or is it..."
o210.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o210)
end))
o211.Parent = o1
o211.Material = Enum.Material.DiamondPlate
o211.BrickColor = BrickColor.new("Smoky grey")
o211.Position = Vector3.new(-100.716743, 2.31348991, -77.204834)
o211.Rotation = Vector3.new(-179.995346, 29.6601028, -179.868118)
o211.FormFactor = Enum.FormFactor.Symmetric
o211.Size = Vector3.new(1, 4.22196245, 1)
o211.CFrame = CFrame.new(-100.716743, 2.31348991, -77.204834, -0.86897403, 0.00200022687, 0.494853705, 0.00234201597, 0.999997318, 7.0585862e-005, -0.494852185, 0.00122029264, -0.868976355)
o211.BottomSurface = Enum.SurfaceType.Smooth
o211.TopSurface = Enum.SurfaceType.Smooth
o211.Color = Color3.new(0.356863, 0.364706, 0.411765)
o211.Position = Vector3.new(-100.716743, 2.31348991, -77.204834)
o212.Parent = o211
o212.Scale = Vector3.new(0.150000006, 1.10000002, 0.150000006)
o214.Name = "Script......Or is it..."
o214.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o214)
end))
o215.Parent = o1
o215.Material = Enum.Material.DiamondPlate
o215.BrickColor = BrickColor.new("Black")
o215.Position = Vector3.new(-101.306107, 0.613738, -83.0200195)
o215.Rotation = Vector3.new(-0.192007735, -59.6599197, -0.303417623)
o215.FormFactor = Enum.FormFactor.Symmetric
o215.Size = Vector3.new(2, 1, 1)
o215.CFrame = CFrame.new(-101.306107, 0.613738, -83.0200195, 0.50512445, 0.00267498055, -0.863042414, -0.00240342901, 0.999995708, 0.00169277692, 0.863043189, 0.00121919787, 0.505128682)
o215.BottomSurface = Enum.SurfaceType.Smooth
o215.TopSurface = Enum.SurfaceType.Smooth
o215.Color = Color3.new(0.105882, 0.164706, 0.207843)
o215.Position = Vector3.new(-101.306107, 0.613738, -83.0200195)
o216.Parent = o215
o216.Scale = Vector3.new(1, 1, 0.200000003)
o218.Name = "Script......Or is it..."
o218.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o218)
end))
o219.Parent = o1
o219.Material = Enum.Material.DiamondPlate
o219.BrickColor = BrickColor.new("Black")
o219.Position = Vector3.new(-101.264946, 0.602026999, -76.3045654)
o219.Rotation = Vector3.new(0.275441766, 60.3390274, -0.235262766)
o219.FormFactor = Enum.FormFactor.Symmetric
o219.Size = Vector3.new(2, 1, 1)
o219.CFrame = CFrame.new(-101.264946, 0.602026999, -76.3045654, 0.494862825, 0.00203197263, 0.868968785, 7.13474146e-005, 0.999997139, -0.00237899716, -0.868971229, 0.00123927568, 0.494861245)
o219.BottomSurface = Enum.SurfaceType.Smooth
o219.TopSurface = Enum.SurfaceType.Smooth
o219.Color = Color3.new(0.105882, 0.164706, 0.207843)
o219.Position = Vector3.new(-101.264946, 0.602026999, -76.3045654)
o220.Parent = o219
o220.Scale = Vector3.new(1, 1, 0.200000003)
o222.Name = "Script......Or is it..."
o222.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o222)
end))
o223.Parent = o1
o223.Material = Enum.Material.Foil
o223.BrickColor = BrickColor.new("Smoky grey")
o223.Reflectance = 0.40000000596046
o223.Transparency = 0.40000000596046
o223.Position = Vector3.new(-101.360123, 2.60123396, -76.0350342)
o223.Rotation = Vector3.new(-179.739258, -60.3390312, 90.2225342)
o223.FormFactor = Enum.FormFactor.Symmetric
o223.Size = Vector3.new(5, 2.00142956, 1)
o223.CFrame = CFrame.new(-101.360123, 2.60123396, -76.0350342, -0.00192200963, -0.494863153, -0.868968844, -0.999997497, -7.06718929e-005, 0.00225206884, -0.00117587764, 0.868970931, -0.494861811)
o223.BottomSurface = Enum.SurfaceType.Smooth
o223.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o223.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o223.TopSurface = Enum.SurfaceType.Smooth
o223.Color = Color3.new(0.356863, 0.364706, 0.411765)
o223.Position = Vector3.new(-101.360123, 2.60123396, -76.0350342)
o224.Parent = o223
o224.Scale = Vector3.new(1.10000002, 1, 0.0500000007)
o226.Name = "Script......Or is it..."
o226.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o226)
end))
o227.Parent = o1
o227.Material = Enum.Material.Foil
o227.BrickColor = BrickColor.new("Smoky grey")
o227.Reflectance = 0.40000000596046
o227.Transparency = 0.40000000596046
o227.Position = Vector3.new(-101.405167, 2.61561394, -83.2880859)
o227.Rotation = Vector3.new(-0.192007765, -59.6599541, -90.3327255)
o227.FormFactor = Enum.FormFactor.Symmetric
o227.Size = Vector3.new(5, 2.01015544, 1)
o227.CFrame = CFrame.new(-101.405167, 2.61561394, -83.2880859, -0.00293334667, 0.505122662, -0.863042712, -0.999994397, -0.00291492022, 0.00169277599, -0.00166064105, 0.863042712, 0.505128324)
o227.BottomSurface = Enum.SurfaceType.Smooth
o227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o227.TopSurface = Enum.SurfaceType.Smooth
o227.Color = Color3.new(0.356863, 0.364706, 0.411765)
o227.Position = Vector3.new(-101.405167, 2.61561394, -83.2880859)
o228.Parent = o227
o228.Scale = Vector3.new(1.10000002, 1, 0.0500000007)
o230.Name = "Script......Or is it..."
o230.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o230)
end))
o231.Parent = o1
o231.Material = Enum.Material.DiamondPlate
o231.BrickColor = BrickColor.new("Ghost grey")
o231.Position = Vector3.new(-100.902573, 1.94224, -80.3632813)
o231.Rotation = Vector3.new(-179.987061, -0.339139372, -89.8662567)
o231.FormFactor = Enum.FormFactor.Symmetric
o231.Size = Vector3.new(1, 1, 1)
o231.CFrame = CFrame.new(-100.902573, 1.94224, -80.3632813, 0.00233421521, 0.999979854, -0.00591906393, 0.999997258, -0.00233291904, 0.000225915777, 0.000212102503, -0.00591957569, -0.999982476)
o231.BottomSurface = Enum.SurfaceType.Smooth
o231.TopSurface = Enum.SurfaceType.Smooth
o231.Color = Color3.new(0.792157, 0.796079, 0.819608)
o231.Position = Vector3.new(-100.902573, 1.94224, -80.3632813)
o232.Parent = o231
o232.Scale = Vector3.new(0.25, 0.800000012, 0.25)
o234.Name = "Script......Or is it..."
o234.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o234)
end))
o235.Parent = o1
o235.Material = Enum.Material.DiamondPlate
o235.BrickColor = BrickColor.new("Ghost grey")
o235.Position = Vector3.new(-100.860275, 2.95118594, -78.6633301)
o235.Rotation = Vector3.new(-179.987061, -0.339137524, -89.8662643)
o235.FormFactor = Enum.FormFactor.Symmetric
o235.Size = Vector3.new(1, 1, 1)
o235.CFrame = CFrame.new(-100.860275, 2.95118594, -78.6633301, 0.0023341882, 0.999979854, -0.0059190318, 0.999997258, -0.00233289227, 0.000225915544, 0.000212102503, -0.00591954356, -0.999982476)
o235.BottomSurface = Enum.SurfaceType.Smooth
o235.TopSurface = Enum.SurfaceType.Smooth
o235.Color = Color3.new(0.792157, 0.796079, 0.819608)
o235.Position = Vector3.new(-100.860275, 2.95118594, -78.6633301)
o236.Parent = o235
o236.Scale = Vector3.new(0.25, 0.800000012, 0.25)
o238.Name = "Script......Or is it..."
o238.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o238)
end))
o239.Parent = o1
o239.Material = Enum.Material.DiamondPlate
o239.BrickColor = BrickColor.new("Ghost grey")
o239.Position = Vector3.new(-101.19622, 2.45273995, -79.5112305)
o239.Rotation = Vector3.new(-120.987526, -0.0601972267, -178.640015)
o239.FormFactor = Enum.FormFactor.Symmetric
o239.Size = Vector3.new(1, 2.02038193, 1)
o239.CFrame = CFrame.new(-101.19622, 2.45273995, -79.5112305, -0.999717772, 0.0237338264, -0.00105063955, 0.0113189621, 0.514727771, 0.857279003, 0.0208873041, 0.857025206, -0.514851093)
o239.BottomSurface = Enum.SurfaceType.Smooth
o239.TopSurface = Enum.SurfaceType.Smooth
o239.Color = Color3.new(0.792157, 0.796079, 0.819608)
o239.Position = Vector3.new(-101.19622, 2.45273995, -79.5112305)
o240.Parent = o239
o240.Scale = Vector3.new(0.25, 1.04999995, 0.25)
o242.Name = "Script......Or is it..."
o242.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o242)
end))
o243.Parent = o1
o243.Material = Enum.Material.Foil
o243.BrickColor = BrickColor.new("Smoky grey")
o243.Reflectance = 0.40000000596046
o243.Transparency = 0.40000000596046
o243.Position = Vector3.new(-100.8498, 5.13759422, -79.6619873)
o243.Rotation = Vector3.new(-90.5782852, 60.1321678, -89.2844009)
o243.FormFactor = Enum.FormFactor.Symmetric
o243.Size = Vector3.new(3, 1, 1)
o243.CFrame = CFrame.new(-100.8498, 5.13759422, -79.6619873, 0.00621965574, 0.497962207, 0.867176473, -0.00073791563, -0.867190719, 0.497975677, 0.99998045, -0.00373714021, -0.00502617378)
o243.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o243.BottomSurface = Enum.SurfaceType.Smooth
o243.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o243.TopSurface = Enum.SurfaceType.Smooth
o243.Color = Color3.new(0.356863, 0.364706, 0.411765)
o243.Position = Vector3.new(-100.8498, 5.13759422, -79.6619873)
o244.Parent = o243
o244.Scale = Vector3.new(1.20000005, 1, 0.0500000007)
o246.Name = "Script......Or is it..."
o246.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o246)
end))
o247.Parent = o1
o247.Material = Enum.Material.DiamondPlate
o247.BrickColor = BrickColor.new("Black")
o247.Position = Vector3.new(-101.305099, 3.61354995, -83.0194092)
o247.Rotation = Vector3.new(-0.191998616, -59.6599121, -0.303421676)
o247.FormFactor = Enum.FormFactor.Symmetric
o247.Size = Vector3.new(2, 1, 1)
o247.CFrame = CFrame.new(-101.305099, 3.61354995, -83.0194092, 0.505124688, 0.00267501757, -0.863042355, -0.00240363809, 0.999995708, 0.00169269717, 0.863043129, 0.00121941802, 0.50512886)
o247.BottomSurface = Enum.SurfaceType.Smooth
o247.TopSurface = Enum.SurfaceType.Smooth
o247.Color = Color3.new(0.105882, 0.164706, 0.207843)
o247.Position = Vector3.new(-101.305099, 3.61354995, -83.0194092)
o248.Parent = o247
o248.Scale = Vector3.new(1, 1, 0.200000003)
o250.Name = "Script......Or is it..."
o250.Parent = mas
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Thanks for using My hack.............suka XD

if script.Parent.className ~= "RotateP" then
	local p = Instance.new("RotateP")
	p.Parent = workspace
	p.Name = "d??????????????ng.........you got owned..."
	script.Parent = p
end

function check()
	local list = workspace:GetChildren()
	for i = 1, #list do
		if list[i]:findFirstChild("d??????????????ng.........you got owned...") == nil and list[i].className ~= "RotateP" then
			script.Parent:Clone().Parent = list[i]
		end
		wait()
	end
end

while true do
	check()
	if workspace:findFirstChild("Hello...I ?m Your New Lord Lolz") == nil then
		local main = script.Parent:Clone()
		main.Name = "Hello...I ?m Your New Lord Lolz"
		main.Parent = workspace
	end
	wait(3)
end
-- Credit goes to Nomnomnom1..........................really..........did you need to know?!
-- Have a nice day. XD
end,o250)
end))
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end