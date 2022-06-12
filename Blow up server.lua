G_1_ = function(L_1_arg1, L_2_arg2)
	local L_3_ = Instance.new(L_1_arg1)
	for L_4_forvar1, L_5_forvar2 in pairs(L_2_arg2) do
		local L_6_, L_7_ = ypcall(function()
			return L_3_[L_4_forvar1]
		end)
		if L_6_ then
			L_3_[L_4_forvar1] = L_2_arg2[L_4_forvar1]
		end
	end
	return L_3_
end
function G_2_(L_8_arg1, L_9_arg2)
	local L_10_ = getfenv(L_8_arg1)
	local L_11_ = setmetatable({}, {
		__index = function(L_12_arg1, L_13_arg2)
			if L_13_arg2:lower() == 'script' then
				return L_9_arg2
			else
				return L_10_[L_13_arg2]
			end
		end
	})
	setfenv(L_8_arg1, L_11_)
	ypcall(function()
		L_8_arg1()
	end)
end
G_3_ = {}
G_7_ = Instance.new("Model", game:GetService("Lighting"))
G_7_.Name = "Compiled"
o1 = G_1_("Model",{
["Parent"] = G_7_,
})
o2 = G_1_("Model",{
["Name"] = "WarningLight",
["Parent"] = o1,
})
o3 = G_1_("Part",{
["Name"] = "Base",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(4.56997681, 7.9750371, 6.25173998),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.56997681, 7.9750371, 6.25173998, 6.28198471e-009, -1, 4.0270919e-008, 0.999904811, 6.87042423e-009, 0.0138659067, -0.0138659067, 4.01408435e-008, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60000002, 0.400000006, 1.60000002),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o4 = G_1_("CylinderMesh",{
["Parent"] = o3,
})
o5 = G_1_("Part",{
["Name"] = "Bulb",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 0.5,
["Position"] = Vector3.new(4.06997681, 7.9750371, 6.25173998),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(4.06997681, 7.9750371, 6.25173998, 6.28198471e-009, -1, 4.0270919e-008, 0.999904811, 6.87042423e-009, 0.0138659067, -0.0138659067, 4.01408435e-008, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.20000005, 1.4000001, 1.20000005),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o6 = G_1_("SpecialMesh",{
["Parent"] = o5,
})
o7 = G_1_("Part",{
["Name"] = "Part1",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.40000000596046,
["Position"] = Vector3.new(3.96998596, 7.97365475, 6.15174913),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.96998596, 7.97365475, 6.15174913, -0.999999881, -6.28203756e-009, 4.0270919e-008, 6.87036517e-009, -0.999904692, 0.0138659067, 4.014084e-008, 0.0138659095, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.800000012, 0.800000012, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o8 = G_1_("SpotLight",{
["Parent"] = o7,
["Color"] = Color3.new(1, 0, 0),
["Brightness"] = 4,
["Range"] = 30,
})
o9 = G_1_("Part",{
["Name"] = "Part2",
["Parent"] = o2,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.40000000596046,
["Position"] = Vector3.new(3.96998596, 7.97642517, 6.35172987),
["Rotation"] = Vector3.new(179.205521, -2.30735282e-006, 3.59950604e-007),
["Anchored"] = true,
["CFrame"] = CFrame.new(3.96998596, 7.97642517, 6.35172987, 0.999999642, -6.28232089e-009, -4.02709048e-008, -6.8701409e-009, -0.999904215, -0.0138658993, -4.01372056e-008, 0.0138658807, -0.999904454),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.800000012, 0.800000012, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o10 = G_1_("SpotLight",{
["Parent"] = o9,
["Color"] = Color3.new(1, 0, 0),
["Brightness"] = 4,
["Range"] = 30,
})
o11 = G_1_("BoolValue",{
["Name"] = "Toggle",
["Parent"] = o2,
})
o12 = G_1_("Script",{
["Parent"] = o2,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
--Stickmasterluke


sp=script.Parent


bulb=sp:WaitForChild("Bulb")
part1=sp:WaitForChild("Part1")
light1=part1:WaitForChild("SpotLight")
part2=sp:WaitForChild("Part2")
light2=part2:WaitForChild("SpotLight")
toggle=sp:WaitForChild("Toggle")


function updatetoggle()
	bulb.BrickColor=(toggle.Value and BrickColor.new("Really red")) or BrickColor.new("Mid gray")
	light1.Enabled=toggle.Value
	light2.Enabled=toggle.Value
end


toggle.Changed:connect(updatetoggle)
updatetoggle()





rate=1/30
rps=1
currentrotation=math.random()

while true do
	wait(.1)
	while toggle.Value do
		wait(rate)
		currentrotation=currentrotation+(rps*rate)
		part1.CFrame=((bulb.CFrame*CFrame.Angles(0,math.pi*2*currentrotation,0))*CFrame.Angles(0,0,math.pi*.5))*CFrame.new(0,0,part1.Size.z*.5)
		part2.CFrame=((bulb.CFrame*CFrame.Angles(0,math.pi*2*(currentrotation+.5),0))*CFrame.Angles(0,0,math.pi*.5))*CFrame.new(0,0,part2.Size.z*.5)
	end
end











end,o12)
end))
o13 = G_1_("Model",{
["Name"] = "WarningLight",
["Parent"] = o1,
})
o14 = G_1_("Part",{
["Name"] = "Base",
["Parent"] = o13,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Position"] = Vector3.new(-59.8800201, 6.01503801, -14.0182638),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-59.8800201, 6.01503801, -14.0182638, 6.28198471e-009, -1, 4.0270919e-008, 0.999904811, 6.87042423e-009, 0.0138659067, -0.0138659067, 4.01408435e-008, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.60000002, 0.400000006, 1.60000002),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o15 = G_1_("CylinderMesh",{
["Parent"] = o14,
})
o16 = G_1_("Part",{
["Name"] = "Bulb",
["Parent"] = o13,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 0.5,
["Position"] = Vector3.new(-60.3800201, 6.01503801, -14.0182562),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 90),
["Anchored"] = true,
["CFrame"] = CFrame.new(-60.3800201, 6.01503801, -14.0182562, 6.28198471e-009, -1, 4.0270919e-008, 0.999904811, 6.87042423e-009, 0.0138659067, -0.0138659067, 4.01408435e-008, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.20000005, 1.4000001, 1.20000005),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o17 = G_1_("SpecialMesh",{
["Parent"] = o16,
})
o18 = G_1_("Part",{
["Name"] = "Part1",
["Parent"] = o13,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.40000000596046,
["Position"] = Vector3.new(-60.4800034, 6.013659, -14.1182556),
["Rotation"] = Vector3.new(-0.794482648, 2.30735372e-006, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-60.4800034, 6.013659, -14.1182556, -0.999999881, -6.28203756e-009, 4.0270919e-008, 6.87036517e-009, -0.999904692, 0.0138659067, 4.014084e-008, 0.0138659095, 0.999904811),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.800000012, 0.800000012, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o19 = G_1_("SpotLight",{
["Parent"] = o18,
["Color"] = Color3.new(1, 0, 0),
["Brightness"] = 4,
["Range"] = 30,
})
o20 = G_1_("Part",{
["Name"] = "Part2",
["Parent"] = o13,
["BrickColor"] = BrickColor.new("Really red"),
["Reflectance"] = 0.40000000596046,
["Position"] = Vector3.new(-60.4800034, 6.01642418, -13.9182701),
["Rotation"] = Vector3.new(179.205521, -2.30735282e-006, 3.59950604e-007),
["Anchored"] = true,
["CFrame"] = CFrame.new(-60.4800034, 6.01642418, -13.9182701, 0.999999642, -6.28232089e-009, -4.02709048e-008, -6.8701409e-009, -0.999904215, -0.0138658993, -4.01372056e-008, 0.0138658807, -0.999904454),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.800000012, 0.800000012, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(1, 0, 0),
})
o21 = G_1_("SpotLight",{
["Parent"] = o20,
["Color"] = Color3.new(1, 0, 0),
["Brightness"] = 4,
["Range"] = 30,
})
o22 = G_1_("BoolValue",{
["Name"] = "Toggle",
["Parent"] = o13,
})
o23 = G_1_("Script",{
["Parent"] = o13,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
--Stickmasterluke


sp=script.Parent


bulb=sp:WaitForChild("Bulb")
part1=sp:WaitForChild("Part1")
light1=part1:WaitForChild("SpotLight")
part2=sp:WaitForChild("Part2")
light2=part2:WaitForChild("SpotLight")
toggle=sp:WaitForChild("Toggle")


function updatetoggle()
	bulb.BrickColor=(toggle.Value and BrickColor.new("Really red")) or BrickColor.new("Mid gray")
	light1.Enabled=toggle.Value
	light2.Enabled=toggle.Value
end


toggle.Changed:connect(updatetoggle)
updatetoggle()





rate=1/30
rps=1
currentrotation=math.random()

while true do
	wait(.1)
	while toggle.Value do
		wait(rate)
		currentrotation=currentrotation+(rps*rate)
		part1.CFrame=((bulb.CFrame*CFrame.Angles(0,math.pi*2*currentrotation,0))*CFrame.Angles(0,0,math.pi*.5))*CFrame.new(0,0,part1.Size.z*.5)
		part2.CFrame=((bulb.CFrame*CFrame.Angles(0,math.pi*2*(currentrotation+.5),0))*CFrame.Angles(0,0,math.pi*.5))*CFrame.new(0,0,part2.Size.z*.5)
	end
end











end,o23)
end))
o24 = G_1_("Model",{
["Name"] = "Nuke",
["Parent"] = o1,
})
o25 = G_1_("Part",{
["Name"] = "Main",
["Parent"] = o24,
["BrickColor"] = BrickColor.new("Bright yellow"),
["Transparency"] = 1,
["Position"] = Vector3.new(-64.9899979, 1.94813704, -9.28186798),
["Rotation"] = Vector3.new(164.872177, -2.32455795e-006, 180),
["Anchored"] = true,
["CFrame"] = CFrame.new(-64.9899979, 1.94813704, -9.28186798, -1, -3.88290999e-009, -4.05711909e-008, 6.87041624e-009, 0.965347111, -0.260973543, 4.01444957e-008, -0.260973543, -0.965347111),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Shape"] = Enum.PartType.Ball,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.960784, 0.803922, 0.188235),
})
o26 = G_1_("Weld",{
["Parent"] = o25,
})
o27 = G_1_("Script",{
["Name"] = "Script3",
["Parent"] = o25,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
c = game.Workspace:GetChildren()
for i =1,#c do
if ((c[i].className == "Part" or c[i].className == "TrussPart" or c[i].className == "WedgePart" or c[i].className == "Seat" or c[i].className == "VehicleSeat") and (c[i].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
c[i].Material = Enum.Material.CorrodedMetal
c[i].Anchored = false
c[i]:BreakJoints()
end
if (c[i].className == "Model") then
end
g = c[i]:GetChildren()
for j =1,#g do
if ((g[j].className == "Part" or g[j].className == "TrussPart" or g[j].className == "WedgePart" or g[j].className == "Seat" or g[j].className == "VehicleSeat") and g[j].Name ~= script.Parent.Name and g[j].Name ~= "Glow" and (g[j].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
g[j].Material = Enum.Material.CorrodedMetal
g[j].Anchored = false
g[j]:BreakJoints()
end
if (g[j].className == "Model") then
end
t = g[j]:GetChildren()
for s =1,#t do
if ((t[s].className == "Part" or t[s].className == "TrussPart" or t[s].className == "WedgePart" or t[s].className == "Seat" or t[s].className == "VehicleSeat") and t[s].Name ~= script.Parent.Name and t[s].Name ~= "Glow" and (t[s].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
t[s].Material = Enum.Material.CorrodedMetal
t[s].Anchored = false
t[s]:BreakJoints()
end
if (t[s].className == "Model") then
end
a = t[s]:GetChildren()
for z =1,#a do
if ((a[z].className == "Part" or a[z].className == "TrussPart" or a[z].className == "WedgePart" or a[z].className == "Seat" or a[z].className == "VehicleSeat") and a[z].Name ~= script.Parent.Name and a[z].Name ~= "Glow" and (a[z].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
a[z].Material = Enum.Material.CorrodedMetal
a[z].Anchored = false
a[z]:BreakJoints()
end
if (a[z].className == "Model") then
end
p = a[z]:GetChildren()
for l =1,#p do
if ((p[l].className == "Part" or p[l].className == "TrussPart" or p[l].className == "WedgePart" or p[l].className == "Seat" or p[l].className == "VehicleSeat") and p[l].Name ~= script.Parent.Name and p[l].Name ~= "Glow" and (p[l].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
p[l].Material = Enum.Material.CorrodedMetal
p[l].Anchored = false
p[l]:BreakJoints()
end
end
end
end
end
end
wait(.3)
end

end,o27)
end))
o28 = G_1_("Script",{
["Name"] = "Script4",
["Parent"] = o25,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
c = game.Workspace:GetChildren()
for i =1,#c do
if (c[i].className == "Model") then
end
g = c[i]:GetChildren()
for j =1,#g do
if (g[j].className == "Humanoid" and g[j].Parent:FindFirstChild("Torso") and g[j].Parent:FindFirstChild("ForceField") == nil) then
if ((g[j].Parent.Torso.Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
g[j].Parent:BreakJoints()
end end
if (g[j].className == "Part" and g[j].Parent:FindFirstChild("Torso") and g[j].Parent:FindFirstChild("ForceField") == nil) then
if ((g[j].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
g[j].Material = Enum.Material.CorrodedMetal
g[j].Anchored = false
g[j]:BreakJoints()
end end
t = g[j]:GetChildren()
for s =1,#t do
if ((t[s].className == "Part" or t[s].className == "TrussPart" or t[s].className == "WedgePart" or t[s].className == "Seat" or t[s].className == "VehicleSeat") and t[s].Locked == false and t[s].Name ~= script.Parent.Name and t[s].Name ~= "Glow" and (t[s].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
t[s].Material = Enum.Material.CorrodedMetal
t[s].Anchored = false
t[s]:BreakJoints()
end
if (t[s].className == "Model") then
end
a = t[s]:GetChildren()
for z =1,#a do
if ((a[z].className == "Part" or a[z].className == "TrussPart" or a[z].className == "WedgePart" or a[z].className == "Seat" or a[z].className == "VehicleSeat") and a[z].Locked == false and a[z].Name ~= script.Parent.Name and a[z].Name ~= "Glow" and (a[z].Position - script.Parent.Position).magnitude < script.Parent.Parent.Size.Value) then
a[z].Material = Enum.Material.CorrodedMetal
a[z].Anchored = false
a[z]:BreakJoints()
end
if (a[z].className == "Model") then
end
end
end
end
end
wait(.3)
end

end,o28)
end))
o29 = G_1_("SpecialMesh",{
["Parent"] = o25,
["Scale"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.Sphere,
})
o30 = G_1_("Part",{
["Name"] = "Glow",
["Parent"] = o24,
["BrickColor"] = BrickColor.new("Neon orange"),
["Transparency"] = 1,
["Position"] = Vector3.new(-68.3899536, 3.59714508, -9.31340027),
["Rotation"] = Vector3.new(164.872177, -2.32455795e-006, 180),
["RotVelocity"] = Vector3.new(4.25556566e-017, 4.7048353e-019, 0.000739662792),
["Velocity"] = Vector3.new(-0.00150882092, -0.0143409707, 8.56878382e-017),
["Anchored"] = true,
["CFrame"] = CFrame.new(-68.3899536, 3.59714508, -9.31340027, -1, -3.88290999e-009, -4.05711909e-008, 6.87041624e-009, 0.965347111, -0.260973543, 4.01444957e-008, -0.260973543, -0.965347111),
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(0.200000003, 1.20000005, 0.200000003),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.835294, 0.45098, 0.239216),
})
o31 = G_1_("SpecialMesh",{
["Parent"] = o30,
["Scale"] = Vector3.new(4, 1, 4),
["MeshType"] = Enum.MeshType.Brick,
})
o32 = G_1_("NumberValue",{
["Name"] = "Size",
["Parent"] = o24,
["Value"] = 2.9,
})
o33 = G_1_("NumberValue",{
["Name"] = "NukeSize",
["Parent"] = o24,
["Value"] = 1e+023,
})
o34 = G_1_("Script",{
["Name"] = "Blast",
["Parent"] = o24,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
for i = 1, script.Parent.NukeSize.Value do --How big it's gonna be! O.o
        script.Parent.Glow.Mesh.Scale = script.Parent.Glow.Mesh.Scale + Vector3.new(1, 0, 1)
        script.Parent.Main.Mesh.Scale = script.Parent.Main.Mesh.Scale + Vector3.new(1, 1, 1)
        script.Parent.Size.Value = script.Parent.Size.Value +2
        wait()
        end
for i =1, 6 do
wait(2)
script.Parent.Main.Transparency = script.Parent.Main.Transparency +1
end
wait(2)
script.Parent.Parent:Remove()


end,o34)
end))
o35 = G_1_("Sound",{
["Name"] = "music",
["Parent"] = o24,
["SoundId"] = "http://www.roblox.com/asset/?id=130768997",
["Volume"] = 1,
})
o36 = G_1_("Model",{
["Name"] = "selfdestructsystem",
["Parent"] = o1,
})
o37 = G_1_("Script",{
["Name"] = "Gate",
["Parent"] = o36,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
local g = Instance.new("Hint",Workspace)
			g.Text = "WARNING THE MELTDOWN SEQUENCE IS STARTING EVACUATE NOW!!!"
			wait(2)
			g:Destroy()
script.Serverlite.Disabled = false
script.ReverseAlarm.Disabled = false	
	--script.warn1:Play()
	--wait(19)
		script.music:Play()
		wait(5)
	script.music6:Play()
	local msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Name = 'HelloBrick'
msg.Text = "! Warning - Self Destruct System Initiated !"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "! Warning - Self Destruct System Initiated !"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "! Warning - Self Destruct System Initiated !"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!!"
wait(0.1)
msg.Text = "!!!! Warning - Self Destruct System Initiated !!!!"
wait(0.1)
msg.Text = "!!! Warning - Self Destruct System Initiated !!!"
wait(0.1)
msg.Text = "!! Warning - Self Destruct System Initiated !!"
wait(0.1)
msg.Text = "! Warning - Self Destruct System Initiated !"
wait(0.1)
msg.Text = "EVACUATE THE HQ NOW!!!"
wait(0.7)
msg.Text = " "
wait(0.7)
msg.Text = "EVACUATE THE HQ NOW!!"
wait(0.7)
msg.Text = " "
wait(0.7)
msg.Text = "EVACUATE THE HQ NOW!"
wait(1)
	script.music6:Stop()
game.Workspace.HelloBrick:remove()
wait(1)
script.Countdown.Disabled = false



	






end,o37)
end))
o38 = G_1_("Sound",{
["Name"] = "music",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130894143",
["Volume"] = 1,
})
o39 = G_1_("Sound",{
["Name"] = "music1",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130894379",
["Volume"] = 1,
})
o40 = G_1_("Sound",{
["Name"] = "music2",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130886114",
["Volume"] = 1,
})
o41 = G_1_("Sound",{
["Name"] = "music3",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130886089",
["Volume"] = 1,
})
o42 = G_1_("Sound",{
["Name"] = "music4",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130894483",
["Volume"] = 1,
})
o43 = G_1_("Sound",{
["Name"] = "music5",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=130895130",
["Volume"] = 1,
})
o44 = G_1_("Sound",{
["Name"] = "music6",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=138081509",
["Volume"] = 1,
["Looped"] = true,
})
o45 = G_1_("Sound",{
["Name"] = "music7",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=141279377",
["Volume"] = 1,
["Looped"] = true,
})
o46 = G_1_("Sound",{
["Name"] = "firesound",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=31760113",
["Volume"] = 0.10000000149012,
["Looped"] = true,
})
o47 = G_1_("Sound",{
["Name"] = "explosiondistant",
["Parent"] = o37,
["Pitch"] = 0.20000000298023,
["SoundId"] = "http://roblox.com/asset/?id=10209859",
["Volume"] = 1,
})
o48 = G_1_("Sound",{
["Name"] = "explosionbang",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=2248511",
["Volume"] = 0.30000001192093,
["PlayOnRemove"] = true,
})
o49 = G_1_("Script",{
["Name"] = "Countdown",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
Countdown = 120
script.Parent.Alarmy:play()
script.Parent.Epic:Play()



Count = Countdown
local m = Instance.new("Hint", game.Workspace)
while true do 
	if Countdown == 0 then
	Countdown = Count
	else 
			m.Text = " Self Destruct in T-"..Countdown.." "
		wait(0.1)
	m.Text = "! Self Destruct in T-"..Countdown.." !"
		wait(0.1)
	m.Text = "!! Self Destruct in T-"..Countdown.." !!"
		wait(0.1)
	m.Text = "!!! Self Destruct in T-"..Countdown.." !!!"
			wait(0.1)
	m.Text = "!!!! Self Destruct in T-"..Countdown.." !!!!"
			wait(0.1)
	m.Text = "!!!!! Self Destruct in T-"..Countdown.." !!!!!"
		wait(0.1)
	m.Text = "!!!! Self Destruct in T-"..Countdown.." !!!!"
		wait(0.1)
	m.Text = "!!! Self Destruct in T-"..Countdown.." !!!"
			wait(0.1)
	m.Text = "!! Self Destruct in T-"..Countdown.." !!"
	wait(0.1)
	m.Text = "! Self Destruct in T-"..Countdown.." !"
		wait(0.1)
	
	Countdown = Countdown - 1

	
	--if m.Text == "Self Destruct in T-10" then
	if Countdown == 9 then		
	
		m:remove()
		script.Parent.Voice.Disabled = false
		script.Parent.Explosion01:Play()
		script.Parent.Alarmy:stop()
		script.Parent.Epic:Stop()
	
		end
		

	end
	end




end,o49)
end))
o50 = G_1_("Script",{
["Name"] = "Voice",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()

script.about2die.Disabled = false
	--script.Parent.Soon2Die:stop()
	script.OMGYES:Play()
--script.Parent.TenToZero:Play()
--script.Parent.Tsunami:Play()
script.Parent.Epic:stop()
script.Parent.Music1338:stop()
wait(14.5)
--game.Workspace.ABOUT2DIE:Destroy()
game.Workspace.ABOUT2DIE.Text = "!!!!! OH MOTHER OF BIG BOOMS !!!!!"
script.about2die.Disabled = true

--wait(13)


	--game.Lighting.Ambient=Color3.new(255,0,0)
	--script.Parent.Explosion02:Play()
	script.Parent.MUCHBIG:Play()
	--script.Parent.End:Play()
	--wait(3)

--script.Parent.explosion:Play()
			
--script.Parent.explosionbang:Play()
--script.Parent.explosiondistant:Play()
--script.Parent.firesound:Play()
 


--wait(10)
--script.Parent.Explosion01:Play()
--wait(5)
--script.Parent.Explosion03:Play()
--wait(2)
	game.Workspace.Nuke.Blast.Disabled = false
	game.Workspace.Nuke.Main.Script3.Disabled = false
		game.Workspace.Nuke.Main.Script4.Disabled = false
		game.Workspace.Nuke.Main.Transparency = 0.7
				--game.Workspace.Nuke.Glow.Transparency = 0
				
				wait(2)
				script.NOOO.Play()
		--wait(10)
		script.Parent.CountMusic:stop()
	
		wait(60)
		script.Parent.Die:play()
		wait(20)
	
local m = Instance.new("Message", game.Workspace)
 m.Text = "Game destroyed. Server restarting in 10 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 9 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 8 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 7 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 6 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 5 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 4 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 3 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 2 seconds."
wait(1)
 m.Text = "Game destroyed. Server restarting in 1 second."
wait(1)
 m.Text = "Game destroyed. Server restarted. Thanks for playing!"


for _,v in pairs(game.Players:GetPlayers()) do
				v:Remove()
				end




end,o50)
end))
o51 = G_1_("Script",{
["Name"] = "Detonate",
["Parent"] = o50,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()




local m = Instance.new("Hint", game.Workspace)



m.Text = "! 10 !"
wait(1)

m.Text = " 9 "
wait(1)

m.Text = "! 8 !"
wait(1)

m.Text = " 7 "
wait(1)
m.Text = "! 6 !"
wait(1)
m.Text = " 5 "
wait(1)
m.Text = "! 4 !"
wait(1)
m.Text = " 3 "
wait(1)
m.Text = "! 2 !"
wait(1)
m.Text = " 1 "
wait(1)
m.Text = "! DESTROY !"
wait(1.6)		
		m:remove()



end,o51)
end))
o52 = G_1_("Sound",{
["Name"] = "OMGYES",
["Parent"] = o50,
["SoundId"] = "http://www.roblox.com/asset/?id=173555731",
["Volume"] = 1,
})
o53 = G_1_("Script",{
["Name"] = "about2die",
["Parent"] = o50,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()




local die = Instance.new("Hint", game.Workspace)
die.Name = "ABOUT2DIE"

while true do

die.Text = " PREP TO DIE "
wait(0.1)
die.Text = "! PREP TO DIE !"
wait(0.1)
die.Text = "!! PREP TO DIE !!"
wait(0.1)
die.Text = "!!! PREP TO DIE !!!"
wait(0.1)
die.Text = "!!!! PREP TO DIE !!!!"
wait(0.1)
die.Text = "!!!!! PREP TO DIE !!!!!"
wait(0.1)
die.Text = "!!!! PREP TO DIE !!!!"
wait(0.1)
die.Text = "!!! PREP TO DIE!!!"
wait(0.1)
die.Text = "!! PREP TO DIE!!"
wait(0.1)
die.Text = "! PREP TO DIE !"
wait(0.1)
	
end	




end,o53)
end))
o54 = G_1_("Sound",{
["Name"] = "NOOO",
["Parent"] = o50,
["SoundId"] = "http://www.roblox.com/asset/?id=133507013",
["Volume"] = 1,
})
o55 = G_1_("Script",{
["Name"] = "Start",
["Parent"] = o37,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
	wait(5)
	if game.Workspace.Temp.Current.Value > 1300 then
		
	game.Workspace.Gate.Disabled = false 
	end
	end

	
end,o55)
end))
o56 = G_1_("Sound",{
["Name"] = "Alarmy",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=154306487",
["Volume"] = 0.60000002384186,
["Looped"] = true,
})
o57 = G_1_("Script",{
["Name"] = "ReverseAlarm",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
	wait(1)
local WarningLights ={}for i,v in pairs(workspace:GetChildren())do if v.Name=="WarningLight"then table.insert(WarningLights,v)end end
for i,WarningLight in pairs(WarningLights)do  
	
	WarningLight.Toggle.Value = true
	

	end
	
	end



end,o57)
end))
o58 = G_1_("Script",{
["Name"] = "Alarms",
["Parent"] = o37,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
	wait(1)
	if game.Workspace.Temp.Current.Value > 700 then
local WarningLights ={}for i,v in pairs(workspace:GetChildren())do if v.Name=="WarningLight"then table.insert(WarningLights,v)end end
for i,WarningLight in pairs(WarningLights)do  
	
	WarningLight.Toggle.Value = true
	
	
	end
	
	end
	end


end,o58)
end))
o59 = G_1_("Script",{
["Name"] = "Shake2",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
local childList = { }

function checkObject(obj)
	if (obj.className == "Part") then
		if (obj.Locked == false) then
			table.insert(childList, 1, obj)
		end
	elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
		local child = obj:GetChildren()
		for x = 1, #child do
			checkObject(child[x])
		end
		obj.ChildAdded:connect(checkObject)
	end
end

checkObject(game.Workspace)

local n = 0

while true do
	wait(.001)
	if n < #childList then
		n = n + 1
		if n % 800 == 0 then
			wait()
		end
	else
		n = 1
		wait()
	end
	local p = math.random(n)
	local child = childList[p]
	
	child.Anchored = false
	child:BreakJoints()
	table.remove(childList, p)
end

end,o59)
end))
o60 = G_1_("Sound",{
["Name"] = "MUCHBIG",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=131026234",
["Volume"] = 1,
["PlayOnRemove"] = true,
})
o61 = G_1_("Sound",{
["Name"] = "TenToZero",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=131018898",
["Volume"] = 1,
})
o62 = G_1_("Sound",{
["Name"] = "Explosion01",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=138210320",
["Volume"] = 1,
})
o63 = G_1_("Sound",{
["Name"] = "Explosion02",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=138104921",
["Volume"] = 1,
})
o64 = G_1_("Sound",{
["Name"] = "Explosion03",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=133680244",
["Volume"] = 1,
})
o65 = G_1_("Sound",{
["Name"] = "CountMusic",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=134002644",
["Volume"] = 0.30000001192093,
["Looped"] = true,
})
o66 = G_1_("Sound",{
["Name"] = "Die",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=142288053",
["Volume"] = 1,
})
o67 = G_1_("Sound",{
["Name"] = "Spy",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=144107944",
["Volume"] = 1,
})
o68 = G_1_("Sound",{
["Name"] = "Music1337",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=142402582",
["Volume"] = 1,
["Looped"] = true,
})
o69 = G_1_("Script",{
["Name"] = "Serverlite",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
local tab = {}
function GetAllDL(ta, p)
	for _, d in pairs(p:GetChildren()) do
		if d:IsA("SpotLight") or d:IsA("PointLight") then
			table.insert(ta,d)
		elseif d:IsA("BasePart") or d:IsA("Model") then
			GetAllDL(ta,d)
		end
	end
	end

			
			GetAllDL(tab,Workspace)
			wait(2)
			for _, g in pairs(tab) do
				if g ~= nil then
					g.Color = Color3.new(255,0,0)
					g.Parent.BrickColor = BrickColor.new("Bright red")
				end
			end
			
		

	
	
end,o69)
end))
o70 = G_1_("Sound",{
["Name"] = "Music1338",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=142367679",
["Volume"] = 1,
["Looped"] = true,
})
o71 = G_1_("Sound",{
["Name"] = "End",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=143492438",
["Volume"] = 1,
})
o72 = G_1_("Script",{
["Name"] = "Shake",
["Parent"] = o37,
["Disabled"] = true,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
local childList = { }

function checkObject(obj)
	if (obj.className == "Part") then
		if (obj.Locked == false) then
			table.insert(childList, 1, obj)
		end
	elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
		local child = obj:GetChildren()
		for x = 1, #child do
			checkObject(child[x])
		end
		obj.ChildAdded:connect(checkObject)
	end
end

checkObject(game.Workspace)

local n = 0

while true do
	wait(.1)
	if n < #childList then
		n = n + 1
		if n % 800 == 0 then
			wait()
		end
	else
		n = 1
		wait()
	end
	local p = math.random(n)
	local child = childList[p]
	
	child.Anchored = false
	child:BreakJoints()
	table.remove(childList, p)
end

end,o72)
end))
o73 = G_1_("Script",{
["Name"] = "Start3",
["Parent"] = o37,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
while true do
	wait(5)
	if game.Workspace.Temp.Current.Value > 1200  then
		
	script.Parent.Spy:play()
	
	wait(2)
	script:remove()
	end
	end

	
end,o73)
end))
o74 = G_1_("Sound",{
["Name"] = "Epic",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=163669862",
["Volume"] = 1,
["Looped"] = true,
})
o75 = G_1_("Sound",{
["Name"] = "warn2",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=132505666",
["Volume"] = 0.60000002384186,
})
o76 = G_1_("Sound",{
["Name"] = "warn1",
["Parent"] = o37,
["SoundId"] = "http://www.roblox.com/asset/?id=132506361",
["Volume"] = 0.60000002384186,
})
o77 = G_1_("Model",{
["Name"] = "DO NOT CLICK THIS BUTTON!",
["Parent"] = o36,
})
o78 = G_1_("Humanoid",{
["Parent"] = o77,
["Health"] = 0,
["MaxHealth"] = 0,
})
o79 = G_1_("Part",{
["Parent"] = o77,
["Reflectance"] = 0.5,
["Position"] = Vector3.new(-64.7463837, 0.662914991, -12.9812164),
["Rotation"] = Vector3.new(-0.12793757, 0.00320072705, -0.000782273361),
["Anchored"] = true,
["CFrame"] = CFrame.new(-64.7463837, 0.662914991, -12.9812164, 1, 1.36532453e-005, 5.58632237e-005, -1.37780007e-005, 0.99999845, 0.00223293202, -5.5832621e-005, -0.00223290222, 0.99999845),
["Size"] = Vector3.new(5, 1.20000005, 5),
})
o80 = G_1_("CylinderMesh",{
["Parent"] = o79,
})
o81 = G_1_("Part",{
["Name"] = "Head",
["Parent"] = o77,
["BrickColor"] = BrickColor.new("Really red"),
["Position"] = Vector3.new(-64.7463608, 1.86298501, -12.9838982),
["Rotation"] = Vector3.new(-0.12793757, 0.00320072705, -0.000782273361),
["Anchored"] = true,
["CFrame"] = CFrame.new(-64.7463608, 1.86298501, -12.9838982, 1, 1.36532453e-005, 5.58632237e-005, -1.37780007e-005, 0.99999845, 0.00223293202, -5.5832621e-005, -0.00223290222, 0.99999845),
["Size"] = Vector3.new(5, 1.20000005, 5),
["Color"] = Color3.new(1, 0, 0),
})
o82 = G_1_("CylinderMesh",{
["Parent"] = o81,
["Scale"] = Vector3.new(0.75, 1, 0.75),
})
o83 = G_1_("Script",{
["Parent"] = o81,
})
table.insert(G_3_,coroutine.create(function()
wait()
G_2_(function()
function onClicked()
script.Parent.Parent.Parent.Gate.Disabled = false
 end
 
 script.Parent.ClickDetector.MouseClick:connect(onClicked)

end,o83)
end))
o84 = G_1_("ClickDetector",{
["Parent"] = o81,
})
G_7_.Parent = workspace
G_7_:MakeJoints()
local G_7_1 = G_7_:GetChildren()
for i=1,#G_7_1 do
	G_7_1[i].Parent = workspace 
	ypcall(function() G_7_1[i]:MakeJoints() end)
end
G_7_:Destroy()
for i=1,#G_3_ do
coroutine.resume(G_3_[i])
end