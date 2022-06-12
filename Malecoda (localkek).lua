--because malecoda.rbxmx is not usable with lv7 or scriptbot in place 1, so i got it turnd into le localscript.

-- Created with Z_Vs M2S Plugin TouchTransmitter
Create = function(itemClass,tabl)
local item = Instance.new(itemClass)
for i,v in pairs(tabl) do
local a,b = ypcall(function() return item[i] end)
if a then
item[i] = tabl[i]
end
end
return item
end
function runDummyScript(f,scri)
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
o1 = Create("Tool",{
["Name"] = "Malecoda",
["Parent"] = mas,
["GripForward"] = Vector3.new(-1, -0, 0),
["GripRight"] = Vector3.new(0, 0, 1),
["GripUp"] = Vector3.new(0, -1, 0),
})
o2 = Create("Part",{
["Name"] = "Handle",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 12, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o3 = Create("CylinderMesh",{
["Parent"] = o2,
["Scale"] = Vector3.new(0.400000006, 1, 0.400000006),
})
o4 = Create("Sound",{
["Name"] = "Slash1",
["Parent"] = o2,
["Pitch"] = 1.5599999427795,
["SoundId"] = "http://www.roblox.com/Asset?ID=92597296",
["Volume"] = 1,
})
o5 = Create("Sound",{
["Name"] = "Slash3",
["Parent"] = o2,
["Pitch"] = 1.0599999427795,
["SoundId"] = "http://www.roblox.com/Asset?ID=92628581",
["Volume"] = 1,
})
o6 = Create("Sound",{
["Name"] = "Slash2",
["Parent"] = o2,
["Pitch"] = 1.0599999427795,
["SoundId"] = "http://www.roblox.com/Asset?ID=92597369",
["Volume"] = 1,
})
o7 = Create("Sound",{
["Name"] = "Clash",
["Parent"] = o2,
["Pitch"] = 0.5,
["SoundId"] = "http://www.roblox.com/asset/?id=91154503",
["Volume"] = 1,
})
o8 = Create("Sound",{
["Name"] = "ChainStart",
["Parent"] = o2,
["Pitch"] = 0.25,
["SoundId"] = "http://www.roblox.com/asset/?id=91154708",
["Volume"] = 1,
})
o9 = Create("Sound",{
["Name"] = "ChainClink",
["Parent"] = o2,
["Pitch"] = 0.60000002384186,
["SoundId"] = "http://www.roblox.com/asset/?id=91154521",
["Volume"] = 1,
})
o10 = Create("Sound",{
["Name"] = "Purge1",
["Parent"] = o2,
["Pitch"] = 0.5,
["SoundId"] = "http://www.roblox.com/asset/?id=11998777 ",
["Volume"] = 1,
})
o11 = Create("Sound",{
["Name"] = "Purge2",
["Parent"] = o2,
["Pitch"] = 0.5,
["SoundId"] = "http://www.roblox.com/asset/?id=11984351 ",
["Volume"] = 1,
})
o12 = Create("Sound",{
["Name"] = "ChainWin",
["Parent"] = o2,
["Pitch"] = 0.97699999809265,
["SoundId"] = "http://www.roblox.com/asset/?id=131228548",
["Volume"] = 0,
})
o13 = Create("Motor",{
["Name"] = "Pivot",
["Parent"] = o2,
["Part0"] = o2,
["Part1"] = o78,
["DesiredAngle"] = 0.25,
["MaxVelocity"] = 0.5,
})
o15 = Create("Part",{
["Name"] = "Handle2",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o16 = Create("CylinderMesh",{
["Parent"] = o15,
["Offset"] = Vector3.new(0, 0, -5.25),
["Scale"] = Vector3.new(2, 1, 2),
})
o17 = Create("Part",{
["Name"] = "Handle3",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o18 = Create("SpecialMesh",{
["Parent"] = o17,
["Scale"] = Vector3.new(1.75, 1.5, 1.75),
})
o19 = Create("Script",{
["Name"] = "Welds",
["Parent"] = o1,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--turdulator "Saz"
Tool=script.Parent;
Handle=Tool.Handle

Weld=function()
	for _,v in pairs(Handle:children()) do
		if v:IsA("JointInstance") then
			v:Remove()
		end
	end
	for _,v in pairs(Tool.HandlePivot:children()) do
		if v:IsA("JointInstance") then
			v:Remove()
		end
	end

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle2
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle3
	w.C0=CFrame.new(0,5.25,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle4
	w.C0=CFrame.new(0,5.25,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle5
	w.C0=CFrame.new(-.625,5.75,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle6
	w.C0=CFrame.new(-.625,5.75,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle7
	w.C0=CFrame.new(-.625,5.75,.5)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle8
	w.C0=CFrame.new(-.625,5.75,-.5)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle9
	w.C0=CFrame.new(-1.5,5.5,.325)*CFrame.fromEulerAnglesXYZ(math.pi/2.5,math.pi/10,math.pi/2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle10
	w.C0=CFrame.new(-1.5,5.5,-.35)*CFrame.fromEulerAnglesXYZ(math.pi/1.5,math.pi/10,math.pi/2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle11
	w.C0=CFrame.new(-1.35,6.1,-.3)*CFrame.fromEulerAnglesXYZ(math.pi/2.5,-math.pi/12,math.pi/2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle12
	w.C0=CFrame.new(-1.35,6.1,.325)*CFrame.fromEulerAnglesXYZ(math.pi/1.5,-math.pi/12,math.pi/2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle13
	w.C0=CFrame.new(-.4,5.6,.8)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle14
	w.C0=CFrame.new(-.6,5.8,.8)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle15
	w.C0=CFrame.new(-.4,5.6,-.8)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle16
	w.C0=CFrame.new(-.6,5.8,-.8)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Motor")
	w.Name="Pivot"
	w.Part0=Handle
	w.Part1=Tool.HandlePivot
	w.C0=CFrame.new(0,5.25,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0
	w.MaxVelocity=.5
	w.DesiredAngle=.25

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle17
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle18
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle19
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/48)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle20
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/48)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle21
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/20)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle22
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/16)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle23
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/11)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle24
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/7)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle25
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/5.5)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle26
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle27
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/3)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle28
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.4)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle29
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle30
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle31
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle32
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle33
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/48)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle34
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/48)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle35
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/20)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle36
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/11)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle37
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/16)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle38
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/7)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle39
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle40
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/7)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle41
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle42
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.2)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle43
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/3)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle44
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle45
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle46
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle47
	w.C0=CFrame.new(0,5.25,1)*CFrame.fromEulerAnglesXYZ(math.pi/16,-math.pi/2,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle48
	w.C0=CFrame.new(0,5.25,-1)*CFrame.fromEulerAnglesXYZ(-math.pi/16,-math.pi/2,math.pi)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle49
	w.C0=CFrame.new(0,4,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle50
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle51
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle52
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle53
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	for i=54, 84 do --hurr shortcuts
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle"..tostring(i)]
		w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
		w.Parent=w.Part0
	end

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle85
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle86
	w.C0=CFrame.new(0,-6.85,0)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0
		
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle87
	w.C0=CFrame.new(-.25,4.5,-.15)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle88
	w.C0=CFrame.new(-.25,4.5,.15)*CFrame.fromEulerAnglesXYZ(math.pi,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle89
	w.C0=CFrame.new(-.49,4,.15)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/2,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle90
	w.C0=CFrame.new(-.49,4,-.15)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/2,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle91
	w.C0=CFrame.new(.45,4,.125)*CFrame.fromEulerAnglesXYZ(0,-math.pi/2,math.pi)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle92
	w.C0=CFrame.new(.45,4,-.125)*CFrame.fromEulerAnglesXYZ(0,-math.pi/2,math.pi)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle93
	w.C0=CFrame.new(0,4,0)*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Tool.Handle94
	w.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle95
	w.C0=CFrame.new(6.75,-2,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

	w=Instance.new("Weld")
	w.Part0=Tool.HandlePivot
	w.Part1=Tool.Handle96
	w.C0=CFrame.new(4,-.25,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	w.Parent=w.Part0

end
Weld()
end,o19)
end))
o20 = Create("Part",{
["Name"] = "Handle4",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o21 = Create("SpecialMesh",{
["Parent"] = o20,
["Scale"] = Vector3.new(1.99000001, 1.35000002, 1.99000001),
})
o22 = Create("Part",{
["Name"] = "Handle5",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.2400017, 1.56500006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.2400017, 1.56500006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o23 = Create("SpecialMesh",{
["Parent"] = o22,
["Scale"] = Vector3.new(1.25, 0.5, 1.25),
})
o24 = Create("Part",{
["Name"] = "Handle6",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.2400017, 1.56500006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.2400017, 1.56500006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o25 = Create("SpecialMesh",{
["Parent"] = o24,
["Scale"] = Vector3.new(1, 1.54999995, 1),
})
o26 = Create("Part",{
["Name"] = "Handle7",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.2400017, 1.56500006, 0.460000008),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.2400017, 1.56500006, 0.460000008, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o27 = Create("SpecialMesh",{
["Parent"] = o26,
["Scale"] = Vector3.new(1.10000002, 0.5, 1.10000002),
})
o28 = Create("Part",{
["Name"] = "Handle8",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.2400017, 1.56500006, -0.540000021),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.2400017, 1.56500006, -0.540000021, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o29 = Create("SpecialMesh",{
["Parent"] = o28,
["Scale"] = Vector3.new(1.10000002, 0.5, 1.10000002),
})
o30 = Create("Part",{
["Name"] = "Handle9",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.4900017, 0.690000057, 0.284999996),
["Rotation"] = Vector3.new(-46.4370003, 64.7571716, -136.436996),
["CFrame"] = CFrame.new(24.4900017, 0.690000057, 0.284999996, -0.309016973, 0.293892652, 0.904508531, -4.1572001e-008, -0.95105654, 0.309017003, 0.95105654, 0.095491454, 0.293892622),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o31 = Create("SpecialMesh",{
["Parent"] = o30,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.150000006, 1.75, 0.150000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o32 = Create("Part",{
["Name"] = "Handle10",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.4900017, 0.690000057, -0.389999986),
["Rotation"] = Vector3.new(-146.98262, 55.4507599, -28.1571598),
["CFrame"] = CFrame.new(24.4900017, 0.690000057, -0.389999986, 0.50000006, 0.26761654, 0.823639095, -4.1572001e-008, -0.95105654, 0.309017003, 0.866025388, -0.154508561, -0.47552833),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o33 = Create("SpecialMesh",{
["Parent"] = o32,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.150000006, 1.75, 0.150000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o34 = Create("Part",{
["Name"] = "Handle11",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(23.8900013, 0.840000033, -0.340000004),
["Rotation"] = Vector3.new(40.9286194, 66.7295303, 141.46048),
["CFrame"] = CFrame.new(23.8900013, 0.840000033, -0.340000004, -0.309016973, -0.246151522, 0.918650091, -4.22219593e-008, -0.965925813, -0.258819044, 0.95105654, -0.079979524, 0.298487484),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o35 = Create("SpecialMesh",{
["Parent"] = o34,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.150000006, 1.75, 0.150000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o36 = Create("Part",{
["Name"] = "Handle12",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(23.8900013, 0.840000033, 0.284999996),
["Rotation"] = Vector3.new(151.813217, 56.7740517, 24.1461067),
["CFrame"] = CFrame.new(23.8900013, 0.840000033, 0.284999996, 0.50000006, -0.224143878, 0.836516261, -4.22219593e-008, -0.965925813, -0.258819044, 0.866025388, 0.129409492, -0.482962966),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.105882, 0.164706, 0.207843),
})
o37 = Create("SpecialMesh",{
["Parent"] = o36,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.150000006, 1.75, 0.150000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o38 = Create("Part",{
["Name"] = "Handle13",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.3900013, 1.79000008, 0.75999999),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.3900013, 1.79000008, 0.75999999, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o39 = Create("SpecialMesh",{
["Parent"] = o38,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.400000006, 1.5, 0.400000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o40 = Create("Part",{
["Name"] = "Handle14",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.1900024, 1.59000003, 0.75999999),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(24.1900024, 1.59000003, 0.75999999, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o41 = Create("SpecialMesh",{
["Parent"] = o40,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.5, 1.79999995, 0.5),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o42 = Create("Part",{
["Name"] = "Handle15",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.3900013, 1.79000008, -0.840000033),
["Rotation"] = Vector3.new(-90, -90, 0),
["CFrame"] = CFrame.new(24.3900013, 1.79000008, -0.840000033, 0, 4.37113883e-008, -1, 1, 0, 0, 0, -1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o43 = Create("SpecialMesh",{
["Parent"] = o42,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.400000006, 1.5, 0.400000006),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o44 = Create("Part",{
["Name"] = "Handle16",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.1900024, 1.59000003, -0.840000033),
["Rotation"] = Vector3.new(-90, -90, 0),
["CFrame"] = CFrame.new(24.1900024, 1.59000003, -0.840000033, 0, 4.37113883e-008, -1, 1, 0, 0, 0, -1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o45 = Create("SpecialMesh",{
["Parent"] = o44,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.5, 1.79999995, 0.5),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o46 = Create("Part",{
["Name"] = "Handle32",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o47 = Create("BlockMesh",{
["Parent"] = o46,
["Offset"] = Vector3.new(1, 0, 0),
["Scale"] = Vector3.new(2, 1.10000002, 0.375),
})
o48 = Create("Part",{
["Name"] = "Handle17",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o49 = Create("BlockMesh",{
["Parent"] = o48,
["Offset"] = Vector3.new(1, -0.574999988, 0),
["Scale"] = Vector3.new(2, 0.100000001, 0.5),
})
o50 = Create("Part",{
["Name"] = "Handle18",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o51 = Create("BlockMesh",{
["Parent"] = o50,
["Offset"] = Vector3.new(1, 0.574999988, 0),
["Scale"] = Vector3.new(2, 0.100000001, 0.5),
})
o52 = Create("Part",{
["Name"] = "Handle19",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 86.25),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.0654031336, -0.997858942, 0, 0.997858942, 0.0654031336, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o53 = Create("BlockMesh",{
["Parent"] = o52,
["Offset"] = Vector3.new(2.6500001, -0.439999998, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.375),
})
o54 = Create("Part",{
["Name"] = "Handle20",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 86.25),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.0654031336, -0.997858942, 0, 0.997858942, 0.0654031336, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o55 = Create("BlockMesh",{
["Parent"] = o54,
["Offset"] = Vector3.new(2.54999995, 0.703000009, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.375),
})
o56 = Create("Part",{
["Name"] = "Handle21",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 81),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.156434476, -0.987688363, 0, 0.987688363, 0.156434476, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o57 = Create("BlockMesh",{
["Parent"] = o56,
["Offset"] = Vector3.new(3.9000001, -0.140000001, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.275000006),
})
o58 = Create("Part",{
["Name"] = "Handle22",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 78.75),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.195090324, -0.980785251, 0, 0.980785251, 0.195090324, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o59 = Create("BlockMesh",{
["Parent"] = o58,
["Offset"] = Vector3.new(3.67000008, 1.11000001, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.234999999),
})
o60 = Create("Part",{
["Name"] = "Handle23",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 73.6363678),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.281732559, -0.959492981, 0, 0.959492981, 0.281732559, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o61 = Create("BlockMesh",{
["Parent"] = o60,
["Offset"] = Vector3.new(5.11999989, 0.43900001, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.170000002),
})
o62 = Create("Part",{
["Name"] = "Handle24",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 64.2857132),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.433883756, -0.90096885, 0, 0.90096885, 0.433883756, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o63 = Create("BlockMesh",{
["Parent"] = o62,
["Offset"] = Vector3.new(4.5, 2.1500001, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.159999996),
})
o64 = Create("Part",{
["Name"] = "Handle25",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 57.272728),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.540640771, -0.841253519, 0, 0.841253519, 0.540640771, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o65 = Create("BlockMesh",{
["Parent"] = o64,
["Offset"] = Vector3.new(6, 2.0374999, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.0900000036),
})
o66 = Create("Part",{
["Name"] = "Handle26",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 47.1428566),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.680172741, -0.733051896, 0, 0.733051896, 0.680172741, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o67 = Create("BlockMesh",{
["Parent"] = o66,
["Offset"] = Vector3.new(4.86999989, 3.56500006, 0),
["Scale"] = Vector3.new(1.25, 0.100000001, 0.0799999982),
})
o68 = Create("Part",{
["Name"] = "Handle27",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 29.9999981),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.866025448, -0.49999997, 0, 0.49999997, 0.866025448, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o69 = Create("BlockMesh",{
["Parent"] = o68,
["Offset"] = Vector3.new(4.71999979, 5.01999998, 0),
["Scale"] = Vector3.new(1.10000002, 0.100000001, 0.0399999991),
})
o70 = Create("Part",{
["Name"] = "Handle28",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 49.0909081),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.654860735, -0.755749583, 0, 0.755749583, 0.654860735, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o71 = Create("BlockMesh",{
["Parent"] = o70,
["Offset"] = Vector3.new(6.4000001, 2.95000005, 0),
["Scale"] = Vector3.new(0.400000006, 0.100000001, 0.0299999993),
})
o72 = Create("Part",{
["Name"] = "Handle29",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 45),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o73 = Create("BlockMesh",{
["Parent"] = o72,
["Offset"] = Vector3.new(6.4000001, 3.45000005, 0),
["Scale"] = Vector3.new(0.100000001, 0.133000001, 0.0299999993),
})
o74 = Create("Part",{
["Name"] = "Handle30",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 45),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o75 = Create("BlockMesh",{
["Parent"] = o74,
["Offset"] = Vector3.new(6.44000006, 3.45000005, 0),
["Scale"] = Vector3.new(0.109999999, 0.0900000036, 0.0299999993),
})
o76 = Create("Part",{
["Name"] = "Handle31",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 45),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o77 = Create("BlockMesh",{
["Parent"] = o76,
["Offset"] = Vector3.new(6.46999979, 3.45000005, 0),
["Scale"] = Vector3.new(0.129999995, 0.0599999987, 0.0199999996),
})
o78 = Create("Part",{
["Name"] = "HandlePivot",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 90),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o79 = Create("Part",{
["Name"] = "Handle33",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 86.25),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.0654031336, -0.997858942, 0, 0.997858942, 0.0654031336, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o80 = Create("BlockMesh",{
["Parent"] = o79,
["Offset"] = Vector3.new(2.5250001, -0.150000006, 0),
["Scale"] = Vector3.new(1.45000005, 0.550000012, 0.275000006),
})
o81 = Create("Part",{
["Name"] = "Handle34",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 86.25),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.0654031336, -0.997858942, 0, 0.997858942, 0.0654031336, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o82 = Create("BlockMesh",{
["Parent"] = o81,
["Offset"] = Vector3.new(2.5250001, 0.400000006, 0),
["Scale"] = Vector3.new(1.25, 0.550000012, 0.275000006),
})
o83 = Create("Part",{
["Name"] = "Handle36",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 73.6363678),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.281732559, -0.959492981, 0, 0.959492981, 0.281732559, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o84 = Create("BlockMesh",{
["Parent"] = o83,
["Offset"] = Vector3.new(5.07499981, 0.725000024, 0),
["Scale"] = Vector3.new(1.35000002, 0.5, 0.100000001),
})
o85 = Create("Part",{
["Name"] = "Handle35",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 81),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.156434476, -0.987688363, 0, 0.987688363, 0.156434476, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o86 = Create("BlockMesh",{
["Parent"] = o85,
["Offset"] = Vector3.new(3.75, 0.150000006, 0),
["Scale"] = Vector3.new(1.5, 0.5, 0.180000007),
})
o87 = Create("Part",{
["Name"] = "Handle37",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 78.75),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.195090324, -0.980785251, 0, 0.980785251, 0.195090324, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o88 = Create("BlockMesh",{
["Parent"] = o87,
["Offset"] = Vector3.new(3.54999995, 0.800000012, 0),
["Scale"] = Vector3.new(1.5, 0.600000024, 0.180000007),
})
o89 = Create("Part",{
["Name"] = "Handle38",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 64.2857132),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.433883756, -0.90096885, 0, 0.90096885, 0.433883756, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o90 = Create("BlockMesh",{
["Parent"] = o89,
["Offset"] = Vector3.new(4.42500019, 1.79999995, 0),
["Scale"] = Vector3.new(1.39999998, 0.600000024, 0.100000001),
})
o91 = Create("Part",{
["Name"] = "Handle39",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 47.1428566),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.680172741, -0.733051896, 0, 0.733051896, 0.680172741, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o92 = Create("BlockMesh",{
["Parent"] = o91,
["Offset"] = Vector3.new(4.9000001, 3.29999995, 0),
["Scale"] = Vector3.new(1.39999998, 0.5, 0.0299999993),
})
o93 = Create("Part",{
["Name"] = "Handle40",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 64.2857132),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.433883756, -0.90096885, 0, 0.90096885, 0.433883756, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o94 = Create("BlockMesh",{
["Parent"] = o93,
["Offset"] = Vector3.new(5.5999999, 1.5, 0),
["Scale"] = Vector3.new(0.5, 0.349999994, 0.0299999993),
})
o95 = Create("Part",{
["Name"] = "Handle41",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 45),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o96 = Create("BlockMesh",{
["Parent"] = o95,
["Offset"] = Vector3.new(5.5999999, 3.5, 0),
["Scale"] = Vector3.new(0.5, 0.3565, 0.0199999996),
})
o97 = Create("Part",{
["Name"] = "Handle42",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 47.1428566),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.680172741, -0.733051896, 0, 0.733051896, 0.680172741, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o98 = Create("BlockMesh",{
["Parent"] = o97,
["Offset"] = Vector3.new(6.0999999, 3.25, 0),
["Scale"] = Vector3.new(0.300000012, 0.174999997, 0.00999999978),
})
o99 = Create("Part",{
["Name"] = "Handle43",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, 29.9999981),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -0.0400000028, 0.866025448, -0.49999997, 0, 0.49999997, 0.866025448, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o100 = Create("BlockMesh",{
["Parent"] = o99,
["Offset"] = Vector3.new(4.94999981, 4.94999981, 0),
["Scale"] = Vector3.new(0.519999981, 0.109999999, 0.00800000038),
})
o101 = Create("Part",{
["Name"] = "Handle44",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o102 = Create("CylinderMesh",{
["Parent"] = o101,
["Offset"] = Vector3.new(0.25, 0.300000012, -5.375),
["Scale"] = Vector3.new(2, 0.100000001, 2),
})
o103 = Create("Part",{
["Name"] = "Handle45",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o104 = Create("CylinderMesh",{
["Parent"] = o103,
["Offset"] = Vector3.new(0.25, -0.300000012, -5.375),
["Scale"] = Vector3.new(2, 0.100000001, 2),
})
o105 = Create("Part",{
["Name"] = "Handle46",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Royal purple"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(90, 90, 0),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 4.37113883e-008, 1, 1, 0, 0, 0, 1, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.384314, 0.145098, 0.819608),
})
o106 = Create("CylinderMesh",{
["Parent"] = o105,
["Offset"] = Vector3.new(0.224999994, 0, -5.375),
["Scale"] = Vector3.new(1.89999998, 0.5, 1.89999998),
})
o107 = Create("Part",{
["Name"] = "Handle47",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, 0.959999979),
["Rotation"] = Vector3.new(90, -4.88599483e-007, 78.75),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, 0.959999979, 0.195090324, -0.980785251, -8.52766924e-009, -4.37113883e-008, 0, -1, 0.980785251, 0.195090324, -4.28714841e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o108 = Create("SpecialMesh",{
["Parent"] = o107,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.5, 2, 1),
["MeshType"] = Enum.MeshType.FileMesh,
})
o109 = Create("Part",{
["Name"] = "Handle48",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(24.7400017, 2.19000006, -1.03999996),
["Rotation"] = Vector3.new(90, 4.88599483e-007, -78.75),
["CFrame"] = CFrame.new(24.7400017, 2.19000006, -1.03999996, 0.195090413, 0.980785251, 8.52766924e-009, 4.37113883e-008, -3.82137093e-015, -1, -0.980785251, 0.195090413, -4.28714841e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o110 = Create("SpecialMesh",{
["Parent"] = o109,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.5, 2, 1),
["MeshType"] = Enum.MeshType.FileMesh,
})
o111 = Create("Part",{
["Name"] = "Handle49",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(25.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o112 = Create("SpecialMesh",{
["Parent"] = o111,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.5, 6, 0.75),
["MeshType"] = Enum.MeshType.Torso,
})
o113 = Create("Part",{
["Name"] = "Handle50",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o114 = Create("CylinderMesh",{
["Parent"] = o113,
["Offset"] = Vector3.new(0, -3.25, 0),
})
o115 = Create("Part",{
["Name"] = "Handle51",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o116 = Create("CylinderMesh",{
["Parent"] = o115,
["Offset"] = Vector3.new(0, -2.5, 0),
})
o117 = Create("Part",{
["Name"] = "Handle52",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Alder"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.705882, 0.501961, 1),
})
o118 = Create("CylinderMesh",{
["Parent"] = o117,
["Offset"] = Vector3.new(0, -2.875, 0),
["Scale"] = Vector3.new(0.75, 2.4000001, 0.75),
})
o119 = Create("Part",{
["Name"] = "Handle53",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Deep blue"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.129412, 0.329412, 0.72549),
})
o120 = Create("CylinderMesh",{
["Parent"] = o119,
["Offset"] = Vector3.new(0, 1.75, 0),
["Scale"] = Vector3.new(0.600000024, 38, 0.600000024),
})
o121 = Create("Part",{
["Name"] = "Handle54",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o122 = Create("CylinderMesh",{
["Parent"] = o121,
["Offset"] = Vector3.new(0, -2.5, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o123 = Create("Part",{
["Name"] = "Handle55",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o124 = Create("CylinderMesh",{
["Parent"] = o123,
["Offset"] = Vector3.new(0, -2.2249999, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o125 = Create("Part",{
["Name"] = "Handle56",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o126 = Create("CylinderMesh",{
["Parent"] = o125,
["Offset"] = Vector3.new(0, -1.95000005, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o127 = Create("Part",{
["Name"] = "Handle57",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o128 = Create("CylinderMesh",{
["Parent"] = o127,
["Offset"] = Vector3.new(0, -1.67499995, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o129 = Create("Part",{
["Name"] = "Handle58",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o130 = Create("CylinderMesh",{
["Parent"] = o129,
["Offset"] = Vector3.new(0, -1.39999998, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o131 = Create("Part",{
["Name"] = "Handle59",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o132 = Create("CylinderMesh",{
["Parent"] = o131,
["Offset"] = Vector3.new(0, -1.125, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o133 = Create("Part",{
["Name"] = "Handle60",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o134 = Create("CylinderMesh",{
["Parent"] = o133,
["Offset"] = Vector3.new(0, -0.850000024, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o135 = Create("Part",{
["Name"] = "Handle61",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o136 = Create("CylinderMesh",{
["Parent"] = o135,
["Offset"] = Vector3.new(0, -0.574999988, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o137 = Create("Part",{
["Name"] = "Handle62",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o138 = Create("CylinderMesh",{
["Parent"] = o137,
["Offset"] = Vector3.new(0, -0.300000012, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o139 = Create("Part",{
["Name"] = "Handle63",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o140 = Create("CylinderMesh",{
["Parent"] = o139,
["Offset"] = Vector3.new(0, -0.0250000004, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o141 = Create("Part",{
["Name"] = "Handle64",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o142 = Create("CylinderMesh",{
["Parent"] = o141,
["Offset"] = Vector3.new(0, 0.25, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o143 = Create("Part",{
["Name"] = "Handle65",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o144 = Create("CylinderMesh",{
["Parent"] = o143,
["Offset"] = Vector3.new(0, 0.524999976, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o145 = Create("Part",{
["Name"] = "Handle66",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o146 = Create("CylinderMesh",{
["Parent"] = o145,
["Offset"] = Vector3.new(0, 0.800000012, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o147 = Create("Part",{
["Name"] = "Handle67",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o148 = Create("CylinderMesh",{
["Parent"] = o147,
["Offset"] = Vector3.new(0, 1.07500005, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o149 = Create("Part",{
["Name"] = "Handle68",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o150 = Create("CylinderMesh",{
["Parent"] = o149,
["Offset"] = Vector3.new(0, 1.35000002, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o151 = Create("Part",{
["Name"] = "Handle69",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o152 = Create("CylinderMesh",{
["Parent"] = o151,
["Offset"] = Vector3.new(0, 1.625, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o153 = Create("Part",{
["Name"] = "Handle70",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o154 = Create("CylinderMesh",{
["Parent"] = o153,
["Offset"] = Vector3.new(0, 1.89999998, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o155 = Create("Part",{
["Name"] = "Handle71",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o156 = Create("CylinderMesh",{
["Parent"] = o155,
["Offset"] = Vector3.new(0, 2.17499995, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o157 = Create("Part",{
["Name"] = "Handle72",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o158 = Create("CylinderMesh",{
["Parent"] = o157,
["Offset"] = Vector3.new(0, 2.45000005, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o159 = Create("Part",{
["Name"] = "Handle73",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o160 = Create("CylinderMesh",{
["Parent"] = o159,
["Offset"] = Vector3.new(0, 2.7249999, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o161 = Create("Part",{
["Name"] = "Handle74",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o162 = Create("CylinderMesh",{
["Parent"] = o161,
["Offset"] = Vector3.new(0, 3, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o163 = Create("Part",{
["Name"] = "Handle75",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o164 = Create("CylinderMesh",{
["Parent"] = o163,
["Offset"] = Vector3.new(0, 3.2750001, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o165 = Create("Part",{
["Name"] = "Handle76",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o166 = Create("CylinderMesh",{
["Parent"] = o165,
["Offset"] = Vector3.new(0, 3.54999995, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o167 = Create("Part",{
["Name"] = "Handle77",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o168 = Create("CylinderMesh",{
["Parent"] = o167,
["Offset"] = Vector3.new(0, 3.82500005, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o169 = Create("Part",{
["Name"] = "Handle78",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o170 = Create("CylinderMesh",{
["Parent"] = o169,
["Offset"] = Vector3.new(0, 4.0999999, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o171 = Create("Part",{
["Name"] = "Handle79",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o172 = Create("CylinderMesh",{
["Parent"] = o171,
["Offset"] = Vector3.new(0, 4.375, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o173 = Create("Part",{
["Name"] = "Handle82",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o174 = Create("CylinderMesh",{
["Parent"] = o173,
["Offset"] = Vector3.new(0, 5.19999981, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o175 = Create("Part",{
["Name"] = "Handle83",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o176 = Create("CylinderMesh",{
["Parent"] = o175,
["Offset"] = Vector3.new(0, 5.4749999, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o177 = Create("Part",{
["Name"] = "Handle84",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o178 = Create("CylinderMesh",{
["Parent"] = o177,
["Offset"] = Vector3.new(0, 5.75, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o179 = Create("Part",{
["Name"] = "Handle81",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o180 = Create("CylinderMesh",{
["Parent"] = o179,
["Offset"] = Vector3.new(0, 4.92500019, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o181 = Create("Part",{
["Name"] = "Handle80",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o182 = Create("CylinderMesh",{
["Parent"] = o181,
["Offset"] = Vector3.new(0, 4.6500001, 0),
["Scale"] = Vector3.new(0.699999988, 1, 0.699999988),
})
o183 = Create("Part",{
["Name"] = "Handle85",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o184 = Create("CylinderMesh",{
["Parent"] = o183,
["Offset"] = Vector3.new(0, 6.25, 0),
["Scale"] = Vector3.new(0.699999988, 2.5, 0.699999988),
})
o185 = Create("Part",{
["Name"] = "Handle86",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(36.8400002, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(36.8400002, 2.19000006, -0.0400000028, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Weld,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o186 = Create("SpecialMesh",{
["Parent"] = o185,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.25, 1, 0.25),
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
o187 = Create("Part",{
["Name"] = "Handle87",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.4900017, 1.94000006, -0.190000013),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(25.4900017, 1.94000006, -0.190000013, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o188 = Create("SpecialMesh",{
["Parent"] = o187,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.5, 3, 0.300000012),
["MeshType"] = Enum.MeshType.Torso,
})
o189 = Create("Part",{
["Name"] = "Handle88",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.4900017, 1.94000006, 0.109999999),
["Rotation"] = Vector3.new(-180, -5.00895612e-006, -90),
["CFrame"] = CFrame.new(25.4900017, 1.94000006, 0.109999999, 0, 1, -8.74227766e-008, 1, 0, 0, 0, -8.74227766e-008, -1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o190 = Create("SpecialMesh",{
["Parent"] = o189,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.5, 3, 0.300000012),
["MeshType"] = Enum.MeshType.Torso,
})
o191 = Create("Part",{
["Name"] = "Handle89",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.9900017, 1.70000005, 0.109999999),
["Rotation"] = Vector3.new(-90, 2.18948435e-013, -90),
["CFrame"] = CFrame.new(25.9900017, 1.70000005, 0.109999999, 8.74227766e-008, 1, 3.82137093e-015, -4.37113883e-008, 0, 1, 1, -8.74227766e-008, 4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o192 = Create("SpecialMesh",{
["Parent"] = o191,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.100000001, 2, 0.5),
["MeshType"] = Enum.MeshType.Wedge,
})
o193 = Create("Part",{
["Name"] = "Handle90",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.9900017, 1.70000005, -0.190000013),
["Rotation"] = Vector3.new(-90, 2.18948435e-013, -90),
["CFrame"] = CFrame.new(25.9900017, 1.70000005, -0.190000013, 8.74227766e-008, 1, 3.82137093e-015, -4.37113883e-008, 0, 1, 1, -8.74227766e-008, 4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o194 = Create("SpecialMesh",{
["Parent"] = o193,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.100000001, 2, 0.5),
["MeshType"] = Enum.MeshType.Wedge,
})
o195 = Create("Part",{
["Name"] = "Handle92",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.9900017, 2.6400001, -0.165000007),
["Rotation"] = Vector3.new(90, -0, -90),
["CFrame"] = CFrame.new(25.9900017, 2.6400001, -0.165000007, 8.74227766e-008, 1, -0, 4.37113883e-008, -3.82137093e-015, -1, -1, 8.74227766e-008, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o196 = Create("SpecialMesh",{
["Parent"] = o195,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.150000006, 6.75, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o197 = Create("Part",{
["Name"] = "Handle91",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(25.9900017, 2.6400001, 0.0849999934),
["Rotation"] = Vector3.new(90, -0, -90),
["CFrame"] = CFrame.new(25.9900017, 2.6400001, 0.0849999934, 8.74227766e-008, 1, -0, 4.37113883e-008, -3.82137093e-015, -1, -1, 8.74227766e-008, -4.37113883e-008),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o198 = Create("SpecialMesh",{
["Parent"] = o197,
["MeshId"] = "http://www.roblox.com/asset/?id=92634383",
["Scale"] = Vector3.new(0.150000006, 6.75, 1),
["MeshType"] = Enum.MeshType.Wedge,
})
o199 = Create("Part",{
["Name"] = "Handle93",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Dark stone grey"),
["Reflectance"] = 0.5,
["Position"] = Vector3.new(25.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(-0, 0, -90),
["CFrame"] = CFrame.new(25.9900017, 2.19000006, -0.0400000028, 8.74227766e-008, 1, 0, -1, 8.74227766e-008, 0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.388235, 0.372549, 0.384314),
})
o200 = Create("SpecialMesh",{
["Parent"] = o199,
["Scale"] = Vector3.new(1, 5, 1),
})
o201 = Create("Part",{
["Name"] = "Handle94",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Position"] = Vector3.new(29.9900017, 2.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(29.9900017, 2.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Custom,
["Size"] = Vector3.new(1.9000001, 0.200000048, 0.699999928),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o202 = Create("CylinderMesh",{
["Parent"] = o201,
["Offset"] = Vector3.new(0, 4, 0),
["Scale"] = Vector3.new(1.125, 1, 1.125),
})
o203 = Create("LocalScript",{
["Parent"] = o1,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(1)
--Saz (aka turdulator)
--No more Enma Engine dosh, that was a bad idea and doesn't sync with ROBLOX at all.

--Instructions to those who stole this:

--[[ 
	  Everything in this is really simple and quite easy to edit.
	  A bit disorganized, but that's just how I roll.
--]]

--[[

Abilities (May or may not match)

Stats:

500 Mana Max
7.5 Regen / Sec
Above Average HP (550)
Below Average Speed (16)
Below Average Defenses(25 Physical, 30 Magic)
Very High Attack (30 Physical, 60 Magic)

Passive: Exemplar's Cloak
Reduces incoming magic damage by 30% and converts
30% of damage taken into Mana.

Passive: Relentless
50% base tenacity and cannot be interrupted.
Does not stack with any other tenacity
giving items.

------

Specializes in keeping an enemy in place while dealing massive damage at a moderate range.
Possesses a powerful, gamebreaking ult which has insane costs and a huge cooldown.
Capable of making self invulnerable for a short period of time.

---
Q - Life Purge

90 Mana
10 Base Damage
5 Secondary Damage
Targeted: Target

Duration: idfk

Continuously drains walkspeed and gives it to Saz.
Deals short damage over time at the beginning amounting to 5 damage.

ffffffffs Cooldown.
---
E - Etherchain

Whatever Mana

Range: Alot studs
Tip Range: 4 studs

GET OVER HERE.

Deals initial damage and drags the hit enemy to Saz.
Enemy takes damage and is slowed for a long time along the way.
Enemy is stunned for a brief period after arrival, based on distance from Saz (shorter = longer stun).

If the Chain fails to move and is in contact with an object, Saz may pull
himself to the chain.

Cooldown resets if the chain does not fly a sufficient distance.
Above works even if an enemy was hooked or the chain stuck.
Will consume mana regardless however.

0-16s Cooldown
---
R - Chaos Fortress

LOLCHANGED Mana
stuff

AOE: 10-15 studs

Spins in a circle, dealing damage to enemies hit.
Damage dealt is lessened the farther the enemy is from Saz.
Range increases to 15 towards the end of the spin.
Saz is healed for 1/2 of the damage dealt.

secondss Cooldown

---
T - Nether Ward

Placed Object
Something Cooldown
Range: Global
DOT Range: 25 studs
Duration: 30 seconds
Cooldown per flare: 3.5 seconds

Flare damage: 13 (+10 DOT)

Fires flares at anyone who's walkspeed falls below a certain
threashold based on Saz' current walkspeed (-5).

Knocks enemy down if successfuly hit by a flare.
Flares cannot miss, but can run into objects and fail.

Deals DOT based on the enemy's health if they're within 25 studs.
The DOT is amplified based on proximity, and is very powerful at close range.

---



---
Y (Ultimate) - Epicenter

200 Mana

Startup: ~1.5 second

Duration: 4 seconds
Damage per second (Scythe): 5
Damage per second (Black Hole): 10

Scythe Distance: 15 studs

Suction Range: 40 studs
Damage Range: 30 studs

Saz spins his scythe in front of him then channels a black hole on top of it.
Enemies within range are pulled in and take damage over time.
At the end the black hole explodes, sending enemies flying and applying a 20% slow for five seconds.

Any enemy caught in Epicenter will be targeted by Nether Wards.

Ten seconds will be added to all cooldowns after Epicenter is complete.
All Nether Wards belonging to Saz will be removed after Epicenter is complete.

Saz cannot move while channeling Epicenter.

90s Cooldown
-----

]]
wait(1)
Tool=script.Parent;

Handle=Tool.Handle
FakeS=Instance.new("Motor6D")
FakeSL=Instance.new("Motor6D")
FakeR=Instance.new("Motor6D")
FakeL=Instance.new("Motor6D")
FakeS.Name="Right Shoulder"
FakeSL.Name="Left Shoulder"
FakeR.Name="Right Hip"
FakeL.Name="Left Hip"
Stance="Standing"
lastattack=time()

Mana=Tool.Mana
MaxMana=600
Regen=14

Grip=nil

Trailing=false
TrailPart=nil

Attacking=false
Comboing=false
ComboPosition=1
Mode=Tool.Mode

STGyro=Instance.new("BodyGyro")
STGyro.P=10000
STGyro.D=500
STGyro.maxTorque=Vector3.new(5000,5000,5000)*500000000000

WalkIncrease=0

ContactId=math.random(0,500000)

Damage=function(hit,damage,Knockback,Knockdown,debtime,Ground,float,keep)
	if hit.Parent==nil then
		return
	end
	if float==nil then float=false end
	if keep==nil then keep=false end
	h=hit.Parent:FindFirstChild("Humanoid",false)
	if h~=nil then
		t=hit.Parent:FindFirstChild("Torso")
		if t~=nil then
			che=false
			if t:FindFirstChild(Tool.Name..ContactId)==nil then
				che=true
			end
			if che==true and h~=Tool.Parent.Humanoid then
				h:TakeDamage(damage*2)
				if t:FindFirstChild("BodyPosition")~=nil then t.BodyPosition:Remove() end
				s=Instance.new("BodyVelocity")
				s.Name=Tool.Name..ContactId
				s.velocity=Knockback
				s.P=2000
				s.maxForce=Vector3.new(50000000,5000000,50000000)*10000
				s.Parent=t
				game:GetService("Debris"):AddItem(s,debtime)
				if Knockdown==true then
					r=Instance.new("BodyAngularVelocity")
					r.P=5000
					r.maxTorque=Vector3.new(50000,50000,50000)*50000000000000000000000000000000000000000000000000000
					r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
					r.Parent=t
					game:GetService("Debris"):AddItem(r,.2+debtime)
				end
				if float==true then
					fff=Instance.new("BodyForce")
					fff.force=Vector3.new(0,2225,0)
					fff.Parent=t
					game:GetService("Debris"):AddItem(fff,3.5)
				end
				if Ground==true then
					r=Instance.new("BodyGyro")
					r.P=5000
					r.D=500
					r.maxTorque=Vector3.new(50000,50000,50000)*50000000000
					r.cframe=t.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
					t.CFrame=r.cframe
					r.Parent=t
					game:GetService("Debris"):AddItem(r,1)
				end
				if keep==true then
					p=Instance.new("BodyPosition")
					p.P=5000
					p.maxForce=Vector3.new(5000000000,0,5000000000)
					p.position=t.Position+Knockback/8
					p.Parent=t
					game:GetService("Debris"):AddItem(p,.375)
				end
			end
		end
	end
end

FaceForward=function()
	cam=workspace.CurrentCamera
	camdir=(cam.CoordinateFrame.p-(cam.CoordinateFrame*CFrame.new(0,0,5)).p).unit
	cdir=Vector3.new(camdir.x,0,camdir.z)
	cfr=CFrame.new(Tool.Parent.Head.Position,Tool.Parent.Head.Position+cdir*100)
	return cfr
end

GetHumans=function()
	Chars={}
	Things=workspace:GetChildren()
	for i,v in pairs(Things) do
		if v.className=="Model" then
			Human=v:FindFirstChild("Humanoid")
			PTorso=v:FindFirstChild("Torso")
			vv=game.Players:GetPlayerFromCharacter(v)
			if Human~=nil and PTorso~=nil and Human~=CPlayer.Humanoid then
				table.insert(Chars,PTorso)
			end
		end
	end
	return Chars
end
ALLCHILD=function()
	local lol={}
	for _,v in pairs(workspace:children()) do
		table.insert(lol,v)
	end
	--[[for _,v in pairs(workspace.Enemies:children()) do
		table.insert(lol,v)
	end]]
	return lol
end
Cooldowns={}
Cooldowns["q"]=0
Cooldowns["e"]=0
Cooldowns["r"]=0
Cooldowns["t"]=0
Cooldowns["y"]=0
Cooldowns["u"]=0

ClickActive=nil
ClickAbility=nil

DoClick=function(target)
	if target==nil then
		ClickActive=nil 
		return
	end
	if target.Parent==nil then
		ClickActive=nil 
		return
	end
	ClickAbility(target)
	ClickActive=nil
	ClickAbility=nil
end
GraveChill=function(target)
	if target.Parent==nil then
		ClickActive=nil 
		return
	end
	if target.Parent:FindFirstChild("Humanoid")==nil then
		ClickActive=nil
		return
	end

	local h=target.Parent.Humanoid
	local t=target.Parent:FindFirstChild("Torso")
	if h.Health<=0 or t==nil then return end
	if (t.Position-CPlayer.Torso.Position).magnitude>50 then return end

	ClickActive=nil
	ClickAbility=nil

	Attacking=true

	Tool.Handle.Purge1:Play()

	Cooldowns["q"]=1

	Mana.Value=Mana.Value-90

	coroutine.resume(coroutine.create(function(t)
		s1=Tool.Handle.Purge2:clone()
		s2=Tool.Handle.Purge2:clone()
		s1.Parent=CPlayer.Torso s2.Parent=t

		s1.Volume=0
		s2.Volume=0
		s1.Pitch=4
		s2.Pitch=4
		s1:Play() s2:Play()
		wait(.35)
		s1.Volume=1 s2.Volume=1
		s1.Pitch=.5
		s2.Pitch=.5
		wait(2.5)
		for i=1, 60 do
			s1.Volume=1-i/60
			s2.Volume=1-i/60
			wait()
		end
		s1:Remove() s2:Remove()
	end),t)


			STGyro.maxTorque=Vector3.new(500000,500000,500000)*5000000000000000000000000000
			STGyro.P=13000
			STGyro.D=400
			DIR=FaceForward().lookVector
			STGyro.cframe=CFrame.new(CPlayer.Torso.Position,Vector3.new(t.Position.x,CPlayer.Torso.Position.y,t.Position.z))*CFrame.fromEulerAnglesXYZ(0,math.pi/1.5,0)

			Grip.C0=GripC0*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
			Grip.Part0=Tool.Parent["Left Arm"]

			Neck.C0=NeckC0
			resWelds()

			FakeS.DesiredAngle=1.6
			FakeS.CurrentAngle=.4
			FakeS.MaxVelocity=.4

			Neck.DesiredAngle=0
			Neck.CurrentAngle=.5

			K=Instance.new("BodyPosition")
			K.P=5000
			K.D=100
			K.maxForce=Vector3.new(50000,0,50000)*5000000000000000000000000000000000
			K.position=CPlayer.Torso.Position
			K.Parent=CPlayer.Torso
			
			Neck.DesiredAngle=-1.6

			wait(.125)

			Neck.DesiredAngle=0

			for i=1, 6 do

				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/9,0)
				FakeS.C0=FakeS.C0*CFrame.new(.1,0,.1)*CFrame.fromEulerAnglesXYZ(0,-math.pi/12,0)

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(2,2,2)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

	local ORI=h.WalkSpeed

	h.Health=h.Health-20
	coroutine.resume(coroutine.create(function(c,o) 

	s=script.Slow:clone()
	s.Percent.Value=20
	s.Duration.Value=370
	s.Disabled=false
	s.Parent=h.Parent

	for i=1, 70 do 

	h.Health=h.Health-10/70

			s=script.Slow:clone()
			s.Percent.Value=1
			s.Duration.Value=(330+.0485*70)-(.0485*(70-i))
			s.Disabled=false
			s.Parent=h.Parent

		local perc=o-c.WalkSpeed
		WalkIncrease=perc

		wait(.0485) 
	end WalkIncrease=0 end),h,ORI)
	
	local p=Instance.new("Part")
	p.Name="FadeTrail"
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=BrickColor.new("Really black")
	p.formFactor="Symmetric"
	p.Size=Vector3.new(1,1,1)
	p.Anchored=true
	p.CanCollide=false
	p.CFrame=t.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
	local mm=Instance.new("BlockMesh")
	mm.Parent=p
	mm.Scale=Vector3.new(3,3,3)
	p.Parent=workspace
	coroutine.resume(coroutine.create(function(p,c) for i=1, 15 do p.CFrame=c.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.5,.5,.5) p.Transparency=i/15 wait() end p:Remove() end),p,t)

	for i=1, 12 do
		local p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=t.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
		local mm=Instance.new("SpecialMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(1,2,1)
		p.Parent=Tool
		coroutine.resume(coroutine.create(function(p,c,k) for i=1, 50 do p.CFrame=c.CFrame+Vector3.new(math.sin(90/30+(i+k))*(3+(i/30)),-3,math.cos(90/30+(i+k))*(3+(i/30))) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(-.01,0,-.01) p.Transparency=i/50 wait() end p:Remove() end),p,t,i*6)
	end

	K:Remove()

	Attacking=false

	for i=1, 15 do

		wait(.0485*4) 

		local p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=CPlayer.Torso.CFrame-Vector3.new(0,3,0)
		local mm=Instance.new("CylinderMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(4,.4,4)
		p.Parent=Tool
		coroutine.resume(coroutine.create(function(p) for i=1, 50 do p.CFrame=p.CFrame p.Mesh.Scale=p.Mesh.Scale+Vector3.new(-.05,0,-.05) wait() end p:Remove() end),p)

		local p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=t.CFrame-Vector3.new(0,3,0)
		local mm=Instance.new("CylinderMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(4,.4,4)
		p.Parent=Tool
		coroutine.resume(coroutine.create(function(p) for i=1, 50 do p.CFrame=p.CFrame p.Mesh.Scale=p.Mesh.Scale+Vector3.new(-.05,0,-.05) wait() end p:Remove() end),p)

	end
	
end
Ward=function()

	local pos=Tool.Parent.Humanoid.TargetPoint+Vector3.new(0,.1,0)

	if (pos-Tool.Parent.Torso.Position).magnitude>=12.5 then
		return
	end

	Cooldowns["t"]=1

	Mana.Value=Mana.Value-10

	local m=Instance.new("Model")
	m.Name="NETHERWARD"

		local p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=CFrame.new(pos)
		local mm=Instance.new("CylinderMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(2,.2,2)
		p.Parent=m

		ss=script.WardScript:clone()
		ss.Owner.Value=Tool.Parent
		ss.Disabled=false
		ss.Parent=p

		s=Instance.new("Smoke")
		s.RiseVelocity=-2
		s.Color=Color3.new(0,0,0)
		s.Opacity=.5
		s.Parent=p
		s=Instance.new("Fire")
		s.Heat=0
		s.Color=Color3.new(102/255,0,204/255)
		s.SecondaryColor=Color3.new(102/255,0,1)
		s.Size=8
		s.Parent=p

		for i=1, 5 do
			local p=Instance.new("Part")
			p.Name="FadeTrail"
			p.TopSurface=0
			p.BottomSurface=0
			p.BrickColor=BrickColor.new("Royal purple")
			p.formFactor="Symmetric"
			p.Size=Vector3.new(1,1,1)
			p.Anchored=true
			p.CanCollide=false
			p.CFrame=CFrame.new(pos)
			p.Transparency=i/25+.75
			local mm=Instance.new("SpecialMesh")
			mm.Parent=p
			mm.MeshType="Sphere"
			mm.Scale=Vector3.new(2+i/1.5,2+i/1.5,2+i/1.5)
			p.Parent=m
		end

		for i=1, 5 do
			local p=Instance.new("Part")
			p.Name="FadeTrail"
			p.TopSurface=0
			p.BottomSurface=0
			p.BrickColor=BrickColor.new("Royal purple")
			p.formFactor="Symmetric"
			p.Size=Vector3.new(1,1,1)
			p.Anchored=true
			p.CanCollide=false
			p.CFrame=CFrame.new(pos)
			p.Transparency=i/10+.25
			local mm=Instance.new("CylinderMesh")
			mm.Parent=p
			mm.Scale=Vector3.new(2+i/1.5,.15-i/70,2+i/1.5)
			p.Parent=m
		end

			local p=Instance.new("Part")
			p.Name="FadeTrail"
			p.TopSurface=0
			p.BottomSurface=0
			p.BrickColor=BrickColor.new("Royal purple")
			p.formFactor="Symmetric"
			p.Size=Vector3.new(1,1,1)
			p.Anchored=true
			p.Reflectance=.25
			p.CanCollide=false
			p.CFrame=CFrame.new(pos)
			local mm=Instance.new("SpecialMesh")
			mm.Parent=p
			mm.MeshType="Sphere"
			mm.Scale=Vector3.new(1.5,1.5,1.5)
			p.Parent=m

		for i=1, 7 do
			local p=Instance.new("Part")
			p.Name="FadeTrail"
			p.TopSurface=0
			p.BottomSurface=0
			p.BrickColor=BrickColor.new("Really black")
			p.formFactor="Symmetric"
			p.Size=Vector3.new(1,1,1)
			p.Anchored=true
			p.CanCollide=false
			p.CFrame=CFrame.new(pos,pos+Vector3.new(math.cos(9*i)*5,0,math.sin(9*i)*5))*CFrame.new(2,0,0)
			local mm=Instance.new("BlockMesh")
			mm.Parent=p
			mm.Scale=Vector3.new(1,.2,.2)
			p.Parent=m
		end

		for i=1, 5 do
			local p=Instance.new("Part")
			p.Name="FadeTrail"
			p.TopSurface=0
			p.BottomSurface=0
			p.BrickColor=BrickColor.new("Royal purple")
			p.formFactor="Symmetric"
			p.Size=Vector3.new(1,1,1)
			p.Anchored=true
			p.Reflectance=.25
			p.CanCollide=false
			p.CFrame=CFrame.new(pos+Vector3.new(math.cos(90/12*i),0,math.sin(90/12*i)),pos)
			local mm=Instance.new("SpecialMesh")
			mm.Parent=p
			mm.MeshType="Sphere"
			mm.Scale=Vector3.new(.2,.4,.2)
			p.Parent=m
		end

		m.Parent=workspace
	
end
Special=function(Key)
	if Attacking==true then return end
	Attacking=true
	print("Gate1")
	if Mode.Value==0 then
		print("Gate2")
		if Key=="q" and Mana.Value>=90 and Cooldowns["q"]<=0 then
			if ClickActive~="q" then
				ClickActive="q"
				ClickAbility=GraveChill
				coroutine.resume(coroutine.create(function()
					for i=1, 30 do
						if ClickActive~="q" then break end
						wait(.1)
					end
					if ClickActive=="q" then ClickActive=nil ClickAbility=nil end
				end))
			else
				ClickActive=nil ClickAbility=nil 
			end
		elseif Key=="e" and Mana.Value>=5 and Cooldowns["e"]<=0 then --No Escape

			Mana.Value=Mana.Value-5
			CPlayer.Humanoid.WalkSpeed=0

			print("NoEscape")

			STGyro.maxTorque=Vector3.new(500000,500000,500000)*5000000000000000000000000000
			STGyro.P=9000
			STGyro.D=600
			DIR=FaceForward().lookVector
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)

			Neck.C0=NeckC0
			resWelds()
			Grip.C0=GripC0*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
			Grip.Part0=Tool.Parent["Left Arm"]

			FakeS.DesiredAngle=1.6
			FakeS.CurrentAngle=.4
			FakeS.MaxVelocity=.4

			K=Instance.new("BodyPosition")
			K.P=5000
			K.D=100
			K.maxForce=Vector3.new(50000,0,50000)*5000000000000000000000000000000000
			K.position=CPlayer.Torso.Position
			K.Parent=CPlayer.Torso
			
			for i=1, 6 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/6,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
				wait()
			end
			Tool.Handle.ChainStart:Play()
			Neck.DesiredAngle=-1.6
			for i=1, 3 do
				
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(-math.pi/36,0,0)
				FakeL.C0=FakeL.C0*CFrame.fromEulerAnglesXYZ(-math.pi/38,0,0)

				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/6*2,0)
				FakeS.C0=FakeS.C0*CFrame.new(.1,0,.1)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
				Neck.C0=Neck.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/16,0)

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(2,2,2)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

			local c=Instance.new("Part")
			c.Name="Chain"
			c.Anchored=true
			c.formFactor="Symmetric"
			c.TopSurface=0
			c.BottomSurface=0
			c.Size=Vector3.new(1,1,1)
			
			local h=c:clone()

			t=Instance.new("Texture")
			t.Texture="http://www.roblox.com/asset/?id=97411259"
			t.StudsPerTileV=1
			t.StudsPerTileU=2
			t.Face="Right"
			t.Parent=c
			t=Instance.new("Texture")
			t.Texture="http://www.roblox.com/asset/?id=97411259"
			t.StudsPerTileV=1
			t.StudsPerTileU=2
			t.Face="Left"
			t.Parent=c

			local m=Instance.new("SpecialMesh")
			m.MeshType="Brick"
			m.Scale=Vector3.new(0,1,1)
			m.Parent=c

			c.CFrame=CFrame.new(CPlayer.Torso.CFrame.p+DIR*5+Vector3.new(0,1.25,0),CPlayer.Torso.CFrame.p+DIR*5+Vector3.new(0,1.25,0)+DIR*50)
			c.Transparency=1
			c.Parent=Tool
			c.Name="CHAIN"

			h.Size=Vector3.new(2,2,2)
			h.Name="HOOK"
			h.BrickColor=BrickColor.new("Really black")
			local mm=script.Parent.SpikeMesh:clone()
			mm.Parent=h
			h.CFrame=c.CFrame*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
			h.CanCollide=true
			h.Anchored=false
			local vv=Instance.new("BodyVelocity")
			vv.P=3000
			vv.maxForce=Vector3.new(500000,500000,500000)*100
			vv.velocity=DIR*90
			vv.Parent=h
			h.Parent=Tool
			local gg=Instance.new("BodyGyro") --no re
			gg.P=5000
			gg.D=500
			gg.maxTorque=Vector3.new(50000,50000,50000)*50000
			gg.cframe=CFrame.new(h.CFrame.p,h.CFrame.p+DIR*50)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
			gg.Parent=h

			Grabee=nil
			e=0
			local sound=Tool.Handle.ChainClink:clone()
			sound.Pitch=sound.Pitch-.25
			sound.Volume=.15
			sound.Parent=h
			local lastpos=h.Position+Vector3.new(0,50,0)
			local chainfail=0
			hookfailed=false
			for i=1, 50 do
				e=50-(i)
				vv.velocity=vv.velocity+DIR*1.5


				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=h.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(2,2,2)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.new(math.random(-100,100)/100,math.random(-100,100)/100,0)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale-Vector3.new(.15,.15,.15) p.Transparency=i/15 wait() end p:Remove() end),p)

				if ((c.CFrame*CFrame.new(0,0,-c.Mesh.Scale.z/2)).p-CPlayer.Torso.CFrame.p).magnitude>=6.75 then
					break
				end

				if (lastpos-h.Position).magnitude>=3 then
					sound:Play()
					lastpos=h.Position
				else
					if workspace:FindPartOnRay(Ray.new(h.Position,DIR*3),script.Parent.Parent)~=nil then
						chainfail=chainfail+1
					end
					if chainfail>=4 then
						hookfailed=true
						break
					end
				end
				LOL=GetHumans()
				for _,v in pairs(LOL) do
					if (v.Position-(h.Position+DIR*1.5)).magnitude <= 5.25 and Grabee==nil then
						
						Grabee=v
						h.CanCollide=false
						v.Parent.Humanoid:TakeDamage(40)
						--v.Parent.Humanoid.PlatformStand=true
						
						local gr=Instance.new("Weld")
						gr.Part0=h
						gr.Part1=v
						gr.Parent=gr.Part0
						gr.C0=CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

						vp=Instance.new("BodyPosition")
						vp.P=12000
						vp.D=3000
						vp.maxForce=Vector3.new(5000000,0,5000000)*500000000000000000000000000
						vp.position=CPlayer["Right Arm"].Position+DIR*3
						vp.Parent=Grabee

						gp=Instance.new("BodyGyro")
						gp.P=5000
						gp.D=500
						gp.maxTorque=Vector3.new(50000,50000,50000)*5000000000
						gp.cframe=Grabee.CFrame
						gp.Parent=Grabee

					end
				end
				if Grabee~=nil then
					script.Parent.Handle.ChainWin:Play()
					break
				end
					
				Position1=(h.CFrame*CFrame.new(0,0,0)).p
				Position2=(CPlayer["Right Arm"].CFrame+DIR*2+Vector3.new(0,.5,0)).p
				Distance=(Position2-Position1).magnitude-2
				c.CFrame=CFrame.new(Position1-DIR*(Distance/2),Position2)
				c.Mesh.Scale=Vector3.new(0,1,Distance)

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(2,2,2)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)
				wait()
			end

			if hookfailed==false then

			vv.velocity=-vv.velocity*1.95
			STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/8,0)

			if Grabee==nil then
				LOLOL={"Gah.","Missed.","You got lucky!","I meant to do that.","Grah!","How the...?"}
			else
				LOLOL={"GET OVER HERE!","Get over here...","Come to Qaeo...","Get over here!","Reel 'em in!","You're mine!"}
			end
			game:GetService("Chat"):Chat(CPlayer,LOLOL[math.random(1,#LOLOL)],2)
			h.CanCollide=false
			for i=1, 25-(e/2-3)-(h.CFrame.p-CPlayer.Torso.CFrame.p).magnitude/60 do

				sound:Play()

				if Grabee~=nil then
					Grabee.Parent.Humanoid:TakeDamage(20/22)
					--Grabee.Parent.Humanoid.PlatformStand=true
					local s=script.Slow:clone()
					s.Duration.Value=790-(i*10)
					s.Percent.Value=80/22
					s.Disabled=false
					s.Parent=Grabee.Parent
				end

				if (h.Position-CPlayer.Torso.Position).magnitude<=6 then
					break
				end

				if i<=7 then
					FakeS.C0=FakeS.C0*CFrame.new(-.04,0,-.04)*CFrame.fromEulerAnglesXYZ(0,math.pi/12,0)
				end
				if i==8 then Attacking=false 	Cooldowns["e"]=1 end

				Position1=(h.CFrame*CFrame.new(0,0,0)).p+h.Velocity/20
				Position2=(CPlayer["Right Arm"].CFrame*CFrame.new(0,-.5,0)+Vector3.new(0,.5,0)).p
				Distance=(Position1-Position2).magnitude
				c.CFrame=CFrame.new(Position2+DIR*(Distance/2),Position1)
				c.Mesh.Scale=Vector3.new(0,1,Distance)

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1.25,1.25,1.25)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)
				wait()

			end

			if Grabee~=nil then
				Grabee.Parent.Humanoid.PlatformStand=false
				game:GetService("Debris"):AddItem(vp,2) game:GetService("Debris"):AddItem(gp,2)
			end

			else
			
				h.Anchored=true
				h.CFrame=h.CFrame+DIR*2
				Tool.Handle.Clash:clone().Parent=h
				h.Clash:Play()
				K.P=6000
				K.D=1000
				K.maxForce=Vector3.new(500000,500000,500000)
				K.position=h.Position-DIR*3
				local KV=Instance.new("BodyVelocity")
				KV.velocity=DIR*110
				KV.maxForce=Vector3.new(math.huge,0,math.huge)
				KV.Parent=CPlayer.Torso
				Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)

				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/8)
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(math.pi/5,0,0)
				local elapsed=0
				while (CPlayer.Torso.Position-h.Position).magnitude>=6 and elapsed<90 do

				LOL=GetHumans()
				for _,v in pairs(LOL) do
					if (v.Position-(CPlayer.Torso.Position+DIR*3)).magnitude <= 5 then
						Grabee=v
						h.CanCollide=false
						v.Parent.Humanoid:TakeDamage(30)
						--v.Parent.Humanoid.PlatformStand=true

						Damage(v,50,Dir*20,true,.2,false,false)

					end
				end

					STGyro.cframe=CFrame.new(CPlayer.Torso.Position,h.Position)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
					STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/6)
					Position1=(h.CFrame*CFrame.new(0,0,0)).p+h.Velocity/20
					Position2=(CPlayer["Right Arm"].CFrame*CFrame.new(0,-.5,0)+Vector3.new(0,.5,0)).p
					Distance=(Position1-Position2).magnitude
					c.CFrame=CFrame.new(Position2+DIR*(Distance/2),Position1)
					c.Mesh.Scale=Vector3.new(0,1,Distance)
					Tool.Handle.ChainClink:Play()
					elapsed=elapsed+1

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1.25,1.25,1.25)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

					wait()
				end
				KV:Remove()
				Cooldowns["e"]=1
				
			end
			h:Remove()
			c:Remove()
			wait(.2)
			K:Remove()
			Grip.Part0=Tool.Parent["Right Arm"]
			Cooldowns["e"]=Cooldowns["e"]

		elseif Key=="r" and Mana.Value>=10 and Cooldowns["r"]<=0 then

			Grip.Part0=FakeS.Part1
			Tool.Handle.Pivot.DesiredAngle=.25

			Mana.Value=Mana.Value-10
			Cooldowns["r"]=1

			Dir=FaceForward().lookVector

			print("POOTS")
			dirr=CPlayer.Torso.Velocity
			lastattack=time()

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=12000
			STGyro.D=300
			STGyro.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
			Neck.CurrentAngle=1.5
			Neck.DesiredAngle=-1

			FakeS.CurrentAngle=1.2
			FakeS.DesiredAngle=1.6
			FakeSL.DesiredAngle=0
			FakeSL.CurrentAngle=0
			FakeS.C0=RightS.C0*CFrame.new(.5,.75,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,0)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/24,0)
			FakeL.DesiredAngle=0
			FakeR.DesiredAngle=0

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.05,0)
			
			Grip.C0=CFrame.new(-.25,-.9,.1)*CFrame.fromEulerAnglesXYZ(math.pi,0,math.pi/2)
			Grip.C1=CFrame.new(-.25,-.45,.05)

			for i=1, 5 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/20,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
				wait()
			end

			vv=Instance.new("BodyPosition")
			vv.P=8000
			vv.D=1000
			vv.maxForce=Vector3.new(5000000000000000000000,50000000000000000000,5000000000000000000000)
			vv.position=CPlayer.Torso.Position+FaceForward().lookVector*5
			vv.Parent=CPlayer.Torso

		local vp=Instance.new("Part")
		vp.Name="FadeTrail"
		vp.TopSurface=0
		vp.BottomSurface=0
		vp.BrickColor=BrickColor.new("Really black")
		vp.formFactor="Symmetric"
		vp.Transparency=0
		vp.Size=Vector3.new(10,1,10)
		vp.Anchored=true
		vp.CanCollide=false
		vp.CFrame=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Vector3.new(0,0,0)
		vp.Parent=Tool
		aaaa=Tool.AAAA:clone() aaaa.Parent=vp
		vp.Transparency=.5
		coroutine.resume(coroutine.create(function(p) for i=1, 100 do p.AAAA.Scale=p.AAAA.Scale+Vector3.new(2,2,0) p.CFrame=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,i/10) wait() end for i=1, 20 do p.Transparency=.5+i/40 p.AAAA.Scale=p.AAAA.Scale+Vector3.new(2,2,0) p.CFrame=CPlayer.Torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/2,0,i/10) wait() end p:Remove() end),vp)


			for i=1, 50 do
				if i==8 or i==16 or i==24 or i==32 or i==40 or i==48 then SlashSound(-.4+i*.02) end
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/2300,-math.pi/5/4*(i/6)-i*.02,math.random(-100,100)/2300)
				if i<=8 then FakeS.C0=FakeS.C0*CFrame.new(0,-.01/10.5*i,.1/10.5*i*1.33)*CFrame.fromEulerAnglesXYZ(0,-math.pi/15/10.5*i*2.2,0)

				Grip.C0=Grip.C0*CFrame.new(.1*1.33,.27*1.33,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60*1.33) end
				
				vv.position=vv.position+FaceForward().lookVector*(.5-(i/50))

				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Tip.Position).magnitude<=10+i/10 then
								Damage(v.Torso,(v.Torso.Position-Tip.Position).magnitude/2,(v.Torso.Position-CPlayer.Torso.Position).unit*1,false,.2,false,false)
								CPlayer.Humanoid.Health=CPlayer.Humanoid.Health+(v.Torso.Position-Tip.Position).magnitude/4
							end
						end
					end
				end

		if i/3==math.floor(i/3) then

		local p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(0,1,0)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=CPlayer.Torso.CFrame
		local mm=Instance.new("CylinderMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(5,.1,5)
		p.Parent=Tool
		coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame p.Mesh.Scale=p.Mesh.Scale+Vector3.new(2,0,2) p.Transparency=i/15 wait() end p:Remove() end),p)
	
		end
				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Royal purple")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CFrame.new(Tip.CFrame.p)
				local mm=Instance.new("SpecialMesh")
				mm.Parent=p
				mm.MeshType="Sphere"
				mm.Scale=Vector3.new(1,.1,1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.CFrame=p.CFrame p.Mesh.Scale=p.Mesh.Scale-Vector3.new(-.1,3,-.1) p.Transparency=i/10 wait() end p:Remove() end),p)

				if i/3==math.floor(i/3) then
				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CFrame.new(CPlayer.Torso.CFrame.p+Vector3.new(math.random(-5,5)*2,0,math.random(-5,5)*2))
				local mm=Instance.new("SpecialMesh")
				mm.Parent=p
				mm.MeshType="Sphere"
				mm.Scale=Vector3.new(.5,.1,.5)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 10 do p.CFrame=p.CFrame p.Mesh.Scale=p.Mesh.Scale-Vector3.new(-.05,2,-.05) p.Transparency=i/10 wait() end p:Remove() end),p)
				end

				wait()
			end

			Attacking=false
			wait(.125)

			vp:Remove()
			vv:Remove()

		elseif Key=="t" and Cooldowns["t"]<=0 and Mana.Value>=10 then --Nether Ward
			if ClickActive~="t" then
				ClickActive="t"
				ClickAbility=Ward
				coroutine.resume(coroutine.create(function()
					for i=1, 30 do
						if ClickActive~="t" then break end
						wait(.1)
					end
					if ClickActive=="t" then ClickActive=nil ClickAbility=nil end
				end))
			else
				ClickActive=nil ClickAbility=nil 
			end
		elseif Key=="y" then --Rage
		elseif Key=="u" and Mana.Value>=10 and Cooldowns["u"]<=0 then --Epicenter

			Mana.Value=Mana.Value-10
			CPlayer.Humanoid.WalkSpeed=10
			Cooldowns["u"]=1

			STGyro.maxTorque=Vector3.new(500000,500000,500000)*5000000000000000000000000000
			STGyro.P=9000
			STGyro.D=600
			DIR=FaceForward().lookVector
			STGyro.cframe=CFrame.new(CPlayer.Torso.Position,CPlayer.Torso.Position+FaceForward().lookVector*5)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)

			Neck.C0=NeckC0
			resWelds()

			Grip.C0=CFrame.new(.75,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/8)

			FakeS.DesiredAngle=1.6
			FakeS.CurrentAngle=.4
			FakeS.MaxVelocity=.4

			K=Instance.new("BodyPosition")
			K.P=5000
			K.D=100
			K.maxForce=Vector3.new(5000000,0,5000000)*5000000000000000000000000000000000
			K.position=CPlayer.Torso.Position
			K.Parent=CPlayer.Torso

			for i=1, 6 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/6,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
				Grip.C0=Grip.C0*CFrame.new(0,.25,0)
				CPlayer.Torso.CFrame=STGyro.cframe

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.3+i*.1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

			FakeSL.DesiredAngle=-1.6
			FakeSL.CurrentAngle=-.6
			FakeSL.MaxVelocity=.3

			wait(.1)
			
			for i=1, 6 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/3,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/24,0)
				Grip.C0=Grip.C0*CFrame.new(0,.25,0)

				CPlayer.Torso.CFrame=STGyro.cframe

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.3+i*.1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

			Neck.DesiredAngle=-Neck.DesiredAngle

			for i=1, 3 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/3,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/24,0)
				FakeSL.C0=FakeSL.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/6,0)
				Grip.C0=Grip.C0*CFrame.new(0,.8,0)

				CPlayer.Torso.CFrame=STGyro.cframe

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=CPlayer["Right Arm"].CFrame*CFrame.new(0,-2,0)*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.6+i*.1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Tool.Handle.CFrame*CFrame.new(0,math.random(-5,5),0)
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.3+i*.1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

			Grip.Part0=nil

			Tool.Handle.Slash1:Play()

			hover=Instance.new("BodyPosition")
			hover.P=6000
			hover.maxForce=Vector3.new(500000,500000,500000)*50000000000
			hover.position=CPlayer.Torso.Position+Vector3.new(0,-1,0)+DIR*20
			hover.Parent=Tool.Handle

			local hg=Instance.new("BodyGyro")
			hg.P=8000
			hg.D=400
			hg.maxTorque=Vector3.new(50000,50000,50000)*5000000
			hg.cframe=CFrame.new(hover.position,hover.position+FaceForward().lookVector*5)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/2)

			hg.Parent=hover.Parent

			for i=1, 6 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/6,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/48,0)

				hg.cframe=hg.cframe*CFrame.fromEulerAnglesXYZ(math.pi/60+i*.05,0,0)

				CPlayer.Torso.CFrame=STGyro.cframe

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Tool.Handle.CFrame*CFrame.new(0,math.random(-5,5),0)
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.6+i*.1)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				wait()
			end

		local vp=Instance.new("Part")
		vp.Name="FadeTrail"
		vp.TopSurface=0
		vp.BottomSurface=0
		vp.BrickColor=BrickColor.new("Really black")
		vp.formFactor="Symmetric"
		vp.Transparency=0
		vp.Size=Vector3.new(10,1,10)
		vp.Anchored=true
		vp.CanCollide=false
		vp.CFrame=CFrame.new(hover.position)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Vector3.new(0,10,0)
		vp.Parent=Tool
		aaaa=Tool.AAAA:clone() aaaa.Parent=vp
		vp.Transparency=.25
		coroutine.resume(coroutine.create(function(p,x) for i=1, 60 do p.AAAA.Scale=p.AAAA.Scale+Vector3.new(2.5,2.5,0) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,-i/3) wait() end for i=1, 40 do p.Transparency=.75+i/(40) p.AAAA.Scale=p.AAAA.Scale+Vector3.new(8,8,0) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/2+1) wait() end p:Remove() end),vp,vp.CFrame)


		local vp=Instance.new("Part")
		vp.Name="FadeTrail"
		vp.TopSurface=0
		vp.BottomSurface=0
		vp.BrickColor=BrickColor.new("Really black")
		vp.formFactor="Symmetric"
		vp.Transparency=0
		vp.Size=Vector3.new(10,1,10)
		vp.Anchored=true
		vp.CanCollide=false
		vp.CFrame=CFrame.new(hover.position)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(0,10,0)
		vp.Parent=Tool
		aaaa=Tool.AAAA:clone() aaaa.Parent=vp
		vp.Transparency=.25
		coroutine.resume(coroutine.create(function(p,x) for i=1, 60 do p.AAAA.Scale=p.AAAA.Scale+Vector3.new(3.5,3.5,0) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,-i/3) wait() end for i=1, 40 do p.Transparency=.75+i/(40) p.AAAA.Scale=p.AAAA.Scale+Vector3.new(8,8,0) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/2+1) wait() end p:Remove() end),vp,vp.CFrame)


		local vp=Instance.new("Part")
		vp.Name="FadeTrail"
		vp.TopSurface=0
		vp.BottomSurface=0
		vp.BrickColor=BrickColor.new("Really black")
		vp.formFactor="Symmetric"
		vp.Transparency=0
		vp.Size=Vector3.new(1,1,1)
		vp.Anchored=true
		vp.CanCollide=false
		vp.CFrame=CFrame.new(hover.position)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Vector3.new(0,10,0)
		vp.Parent=Tool
		aaaa=Tool.Mesh:clone() aaaa.Parent=vp aaaa.Name="AAAA"
		vp.Transparency=.5
		coroutine.resume(coroutine.create(function(p,x) for i=1, 40 do p.AAAA.Scale=p.AAAA.Scale+Vector3.new(.5,.5,.5)/4 p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end for i=1, 10 do p.AAAA.Scale=p.AAAA.Scale-Vector3.new(.6,.6,.6) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end wait(.1) for i=1, 50 do p.Transparency=.5+i/(50) p.AAAA.Scale=p.AAAA.Scale+Vector3.new(2,2,2)/2 p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end p:Remove() end),vp,vp.CFrame)


		local vp=Instance.new("Part")
		vp.Name="FadeTrail"
		vp.TopSurface=0
		vp.BottomSurface=0
		vp.BrickColor=BrickColor.new("Really black")
		vp.formFactor="Symmetric"
		vp.Transparency=0
		vp.Size=Vector3.new(1,1,1)
		vp.Anchored=true
		vp.CanCollide=false
		vp.CFrame=CFrame.new(hover.position)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)+Vector3.new(0,10,0)
		vp.Parent=Tool
		aaaa=Tool.Mesh:clone() aaaa.Parent=vp aaaa.Name="AAAA" aaaa.VertexColor=Vector3.new(.25,0,.5)
		vp.Transparency=.5
		coroutine.resume(coroutine.create(function(p,x) for i=1, 40 do p.AAAA.Scale=p.AAAA.Scale+Vector3.new(.5,.5,.5)/7 p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end for i=1, 10 do p.AAAA.Scale=p.AAAA.Scale-Vector3.new(.4,.4,.4) p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end wait(.1) for i=1, 50 do p.Transparency=.5+i/(50) p.AAAA.Scale=p.AAAA.Scale+Vector3.new(2,2,2)/2.2 p.CFrame=x*CFrame.fromEulerAnglesXYZ(0,0,i/5) wait() end p:Remove() end),vp,vp.CFrame)

		local sss=Tool.Handle.Purge1:clone()
		sss.Pitch=.2
		sss.Parent=Tool.Handle
		sss:Play()
		sss.Name="FFFFFFF"
		game:GetService("Debris"):AddItem(sss,4)

			local sss=script.WardScript.Swoosh:clone()
			sss.Pitch=.175
			sss.Parent=Tool.Handle
			sss:Play()
			sss.Name="FFFFFFF"
			game:GetService("Debris"):AddItem(sss,4)

			for i=6, 55 do
				hg.cframe=hg.cframe*CFrame.fromEulerAnglesXYZ(math.pi/30+i*.05,0,0)
				Tool.Handle.CFrame=hg.cframe

				if i/2==math.floor(i/2) then
				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Tool.Handle.CFrame+Vector3.new(math.random(-10,10)*3,math.random(-2,30)+10,math.random(-10,10)*3)
				local mm=Instance.new("SpecialMesh")
				mm.Parent=p
				mm.MeshType="Sphere"
				mm.Scale=Vector3.new(1,1,5)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p,o,c) for i=1, 15 do p.CFrame=CFrame.new(o:Lerp(c,1/15*i),c) p.Mesh.Scale=p.Mesh.Scale-Vector3.new(.02,.02,.1) p.Transparency=i/15 wait() end p:Remove() end),p,p.CFrame.p,Tool.Handle.CFrame.p+Vector3.new(0,5,0))
				end

				local p=Instance.new("Part")
				p.Name="FadeTrail"
				p.TopSurface=0
				p.BottomSurface=0
				p.BrickColor=BrickColor.new("Really black")
				p.formFactor="Symmetric"
				p.Size=Vector3.new(1,1,1)
				p.Anchored=true
				p.CanCollide=false
				p.CFrame=Tool.Handle.CFrame+Vector3.new(0,10,0)
				local mm=Instance.new("BlockMesh")
				mm.Parent=p
				mm.Scale=Vector3.new(1,1,1)*(1.7+i*.25)
				p.Parent=Tool
				coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.05,.05,.05) p.Transparency=i/15 wait() end p:Remove() end),p)

				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-p.Position).magnitude<=28+i/2 then
								local ph=Instance.new("BodyPosition")
								ph.maxForce=Vector3.new(200000,200000,200000)
								ph.P=2000 ph.D=1000
								ph.position=Tool.Handle.Position+Vector3.new(0,5,0)
								ph.Parent=v.Torso
								game:GetService("Debris"):AddItem(ph,.2)
								local r=Instance.new("BodyAngularVelocity")
								r.P=5000
								r.maxTorque=Vector3.new(50000,50000,50000)*50000000
								r.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))/3
								r.Parent=ph.Parent
								game:GetService("Debris"):AddItem(r,.2)
								if (v.Torso.Position-p.Position).magnitude<15 then
									v.Humanoid:TakeDamage(1)
									ss=script.Slow:clone() ss.Duration.Value=500 ss.Percent.Value=80 ss.Disabled=false ss.Parent=v
								end
							end
						end
					end
				end

				wait()
			end
			sss2=sss
			local sss=script.WardScript.FireExplode:clone()
			sss.Pitch=.125
			sss.Parent=Tool.Handle
			sss:Play()
			sss.Name="FFFFFFF"
			game:GetService("Debris"):AddItem(sss,4)
			for i=1, 10 do
				sss2.Volume=sss2.Volume-.1
				hg.cframe=hg.cframe*CFrame.fromEulerAnglesXYZ(math.pi/30+i*.05,0,0)
				wait()
			end
			sss2:Stop()
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Tool.Handle.Position).magnitude<=40 then
								local ph=Instance.new("BodyVelocity")
								ph.maxForce=Vector3.new(500000,500000,500000)*50000000000000000
								ph.velocity=(v.Torso.Position-Tool.Handle.Position).unit*55
								ph.Parent=v.Torso
								game:GetService("Debris"):AddItem(ph,.33)
								local r=Instance.new("BodyAngularVelocity")
								r.P=5000
								r.maxTorque=Vector3.new(50000,50000,50000)*50000000000000000
								r.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
								r.Parent=ph.Parent
								game:GetService("Debris"):AddItem(r,.8)
								v.Humanoid:TakeDamage(15)
							end
						end
					end
				end

			wait(.25)

			hover:Remove()
			hg:Remove()
			Grip.Part0=CPlayer["Right Arm"]

			K:Remove()

		end
	end
	print("Done")
	Attacking=false
end

Tip=Tool.Handle95
Mid=Tool.Handle96

Trail=function(val,par,size,color,fade)
	if val==0 then
		if par:FindFirstChild("Trail")~=nil then
			par.Trail:Remove()
		end
	elseif val==1 then
		local new=script.Trail:clone()
		new.Color.Value=color
		new.Size.Value=size
		new.Script.FadeTime.Value=fade
		new.Disabled=false
		new.Parent=par
	end
end

ptr=Instance.new("Part")
ptr.BrickColor=BrickColor.new("Really black")
ptr.TopSurface=0
ptr.BottomSurface=0
ptr.Reflectance=.1
ptr.Name=script.Parent.Name.."TRAIL"
ptr.Anchored=true
ptr.CanCollide=false
ptr.formFactor="Symmetric"
ptr.Size=Vector3.new(1,1,1)
m=Instance.new("BlockMesh")
m.Scale=Vector3.new(.2,.2,0)
m.Parent=ptr

ptr.Size=Vector3.new(1,1,1)

lastposition=Vector3.new(0,0,0)
thisposition=Vector3.new(0,0,0)

trailing=false

manualtrail=function(p)

	local part=p --convert this immediately

	direction=-(lastposition-thisposition).unit
	start=lastposition+direction*((thisposition-lastposition).magnitude/2)
	
	local n=ptr:clone()
	n.CFrame=CFrame.new(start,thisposition)
	n.Mesh.Scale=n.Mesh.Scale+Vector3.new(0,0,(lastposition-thisposition).magnitude)
	n.Parent=script.Parent

	lastposition=(n.CFrame+(direction*((thisposition-lastposition).magnitude/2))).p

	coroutine.resume(coroutine.create(function(p) for i=1, 15 do p.Transparency=i/15 wait() end p:Remove() end),n)

end

ADeb=true

SlashSound=function(pitch)
	Tool.Handle.Slash1.Pitch=1+pitch
	Tool.Handle.Slash2.Pitch=.5+pitch
	Tool.Handle.Slash3.Pitch=.5+pitch
	Tool.Handle.Slash1:Play()
	Tool.Handle.Slash2:Play()
	Tool.Handle.Slash3:Play()
end

Attack=function()
	if not ADeb then return end
	print("AAAAA")
	Comboing=true
	ADeb=false
	Tool.Parent.Humanoid.WalkSpeed=0
	Dir=FaceForward().lookVector
	if Mode.Value==0 and Attacking==false then --Scythe
		trailing=true
		lastposition=Tip.Position
		if ComboPosition==1 then
			Grip.Part0=FakeS.Part1
			Tool.Handle.Pivot.DesiredAngle=.25

			Dir=FaceForward().lookVector

			ComboPosition=2

			print("POOTS")
			dirr=CPlayer.Torso.Velocity
			lastattack=time()

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=12000
			STGyro.D=300
			STGyro.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
			Neck.CurrentAngle=-1.5
			Neck.DesiredAngle=.8

			FakeS.CurrentAngle=1.2
			FakeS.DesiredAngle=1.6
			FakeSL.DesiredAngle=0
			FakeSL.CurrentAngle=0
			FakeS.C0=RightS.C0*CFrame.new(.5,.75,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,0)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/24,0)
			FakeL.DesiredAngle=0
			FakeR.DesiredAngle=0

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.05,0)
			
			Grip.C0=CFrame.new(-.25,-.9,.1)*CFrame.fromEulerAnglesXYZ(math.pi,0,math.pi/2)
			Grip.C1=CFrame.new(-.25,-.45,.05)

			for i=1, 5 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/20,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
				wait()
			end

			vv=Instance.new("BodyPosition")
			vv.P=5000
			vv.maxForce=Vector3.new(500000000000000000,0,500000000000000000)
			vv.position=CPlayer.Torso.Position+FaceForward().lookVector*2
			vv.Parent=CPlayer.Torso

			for i=1, 10 do
				if i==2 then SlashSound(-.05) end
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/4/2.5*(i/2.5)+i*.05*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.01/10.5*i*1.33,.1/10.5*i*1.33)*CFrame.fromEulerAnglesXYZ(0,-math.pi/15/10.5*i*2.2,0)
				Grip.C0=Grip.C0*CFrame.new(.1*1.33,.27*1.33,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60*1.33)
				
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Mid.Position).magnitude<=6 or (v.Torso.Position-Tip.Position).magnitude<=4 or (v.Torso.Position-Tool.Handle.Position).magnitude<=6 then
								Damage(v.Torso,15,Dir*2+(v.Torso.Position-CPlayer.Torso.Position).unit*3,false,.2,false,false)
							end
						end
					end
				end
				wait()
			end

			vv:Remove()

			wait()

			ADeb=true

		elseif ComboPosition==2 then
			Grip.Part0=FakeS.Part1
			Tool.Handle.Pivot.DesiredAngle=.25
			ComboPosition=3

			print("POOTS")

			lastattack=time()

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=12000
			STGyro.D=300
			STGyro.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
			Neck.CurrentAngle=.8
			Neck.DesiredAngle=.5

			FakeS.CurrentAngle=1.6
			FakeS.DesiredAngle=1.6
			FakeSL.DesiredAngle=0
			FakeSL.CurrentAngle=0
			FakeS.C0=RightS.C0*CFrame.new(.5,.75,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,0)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/24,0)
			FakeL.DesiredAngle=0
			FakeR.DesiredAngle=0

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.05,0)
			
			Grip.C0=CFrame.new(-.25,-.9,.1)*CFrame.fromEulerAnglesXYZ(math.pi,0,math.pi/2)
			Grip.C1=CFrame.new(-.25,-.45,.05)

			for i=1, 5 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/20,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
			end

			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/4/2.5*(i/2.5)+i*.05*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.01/10.5*i*1.33,.1/10.5*i*1.33)*CFrame.fromEulerAnglesXYZ(0,-math.pi/15/10.5*i*2.2,0)
				Grip.C0=Grip.C0*CFrame.new(.1*1.33,.27*1.33,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60*1.33)
			end

			vv=Instance.new("BodyPosition")
			vv.P=5000
			vv.maxForce=Vector3.new(500000000000000000,0,500000000000000000)
			vv.position=CPlayer.Torso.Position+FaceForward().lookVector*3
			vv.Parent=CPlayer.Torso


			for i=1, 2 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/150,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/7,0)
				wait()
			end

			SlashSound(0)

			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-i*.0825*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,-.09,0)
				Grip.C0=Grip.C0*CFrame.new(.225,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/50)
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Mid.Position).magnitude<=6 or (v.Torso.Position-Tip.Position).magnitude<=4 or (v.Torso.Position-Tool.Handle.Position).magnitude<=6 then
								Damage(v.Torso,15,Dir*2+(v.Torso.Position-CPlayer.Torso.Position).unit*9,false,.2,false,false)
							end
						end
					end
				end
				wait()
			end

			wait()

			vv:Remove()

			wait()

			ADeb=true

		elseif ComboPosition==3 then

			ComboPosition=4

			print("POOTS")

			lastattack=time()

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=12000
			STGyro.D=300
			STGyro.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
			Neck.DesiredAngle=-1.3
			Neck.CurrentAngle=0

			FakeS.CurrentAngle=1.6
			FakeS.DesiredAngle=1.6
			FakeSL.DesiredAngle=0
			FakeSL.CurrentAngle=0
			FakeS.C0=RightS.C0*CFrame.new(.5,.75,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,0)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/24,0)
			FakeL.DesiredAngle=0
			FakeR.DesiredAngle=0

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.05,0)
			
			Grip.C0=CFrame.new(-.25,-.9,.1)*CFrame.fromEulerAnglesXYZ(math.pi,0,math.pi/2)
			Grip.C1=CFrame.new(-.25,-.45,.05)
			for i=1, 5 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/20,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
			end
			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/4/2.5*(i/2.5)+i*.05*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.01/10.5*i*1.33,.1/10.5*i*1.33)*CFrame.fromEulerAnglesXYZ(0,-math.pi/15/10.5*i*2.2,0)
				Grip.C0=Grip.C0*CFrame.new(.1*1.33,.27*1.33,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60*1.33)
			end
			for i=1, 2 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/150,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/7,0)
			end
			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-i*.0825*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,-.08,0)
				Grip.C0=Grip.C0*CFrame.new(.225,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/50)
			end
			SlashSound(0.05)
			FakeSL.DesiredAngle=-1.6
			FakeSL.CurrentAngle=-1
			FakeSL.C0=LeftS.C0
			Tool.Handle.Pivot.DesiredAngle=1.6
			vv=Instance.new("BodyPosition")
			vv.P=5000
			vv.maxForce=Vector3.new(500000000000000000,0,500000000000000000)
			vv.position=CPlayer.Torso.Position+FaceForward().lookVector*3
			vv.Parent=CPlayer.Torso
			FakeS.DesiredAngle=1
			for i=1, 5 do
				FakeL.C0=FakeL.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/7.5,0)
				FakeSL.C0=FakeSL.C0*CFrame.new(-.25,0,-.25)*CFrame.fromEulerAnglesXYZ(math.pi/64,-math.pi/10,0)
				Grip.C0=Grip.C0*CFrame.new(0,-.2,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Mid.Position).magnitude<=7 or (v.Torso.Position-Tip.Position).magnitude<=4 or (v.Torso.Position-Tool.Handle.Position).magnitude<=6 then
								Damage(v.Torso,20,Dir*10,false,.2,false,false)
							end
						end
					end
				end
				wait()
			end
			Grip.Part0=FakeSL.Part1
			Grip.C0=GripC0*CFrame.new(0,0,-3.5)*CFrame.fromEulerAnglesXYZ(-math.pi/2,math.pi/2,0)
			for i=1, 5 do
				FakeL.C0=FakeL.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeSL.C0=FakeSL.C0*CFrame.new(.15,.6,-.15)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/5)
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Mid.Position).magnitude<=6 or (v.Torso.Position-Tip.Position).magnitude<=4 or (v.Torso.Position-Tool.Handle.Position).magnitude<=5 then
								Damage(v.Torso,20,Dir*10,false,.2,false,false)
							end
						end
					end
				end
				wait()
			end
			vv:Remove()

			ADeb=true

		elseif ComboPosition==4 then

			ComboPosition=1

			print("POOTS")

			lastattack=time()

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=12000
			STGyro.D=300
			STGyro.maxTorque=Vector3.new(5000000000,5000000000,5000000000)
			Neck.DesiredAngle=-1.3
			Neck.CurrentAngle=-1.3

			FakeS.CurrentAngle=1.6
			FakeS.DesiredAngle=1.6
			FakeSL.DesiredAngle=0
			FakeSL.CurrentAngle=0
			FakeS.C0=RightS.C0*CFrame.new(.5,.75,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/32,0)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,0)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24,math.pi/24,0)
			FakeL.DesiredAngle=0
			FakeR.DesiredAngle=0

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.05,0)
			
			Grip.C0=CFrame.new(-.25,-.9,.1)*CFrame.fromEulerAnglesXYZ(math.pi,0,math.pi/2)
			Grip.C1=CFrame.new(-.25,-.45,.05)
			for i=1, 5 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/20,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/24,0)
			end
			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-math.pi/4/2.5*(i/2.5)+i*.05*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.01/10.5*i*1.33,.1/10.5*i*1.33)*CFrame.fromEulerAnglesXYZ(0,-math.pi/15/10.5*i*2.2,0)
				Grip.C0=Grip.C0*CFrame.new(.1*1.33,.27*1.33,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/60*1.33)
			end
			for i=1, 2 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/150,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,-.1,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/7,0)
			end
			for i=1, 10 do
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,-i*.0825*1.33,0)
				FakeS.C0=FakeS.C0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,-.08,0)
				Grip.C0=Grip.C0*CFrame.new(.225,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/50)
			end
			FakeSL.DesiredAngle=-1.6
			FakeSL.CurrentAngle=-1
			FakeSL.C0=LeftS.C0
			Tool.Handle.Pivot.DesiredAngle=1.6
			FakeS.DesiredAngle=1.5
			for i=1, 5 do
				FakeL.C0=FakeL.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/7.5,0)
				FakeSL.C0=FakeSL.C0*CFrame.new(-.25,0,-.25)*CFrame.fromEulerAnglesXYZ(math.pi/64,-math.pi/10,0)
				Grip.C0=Grip.C0*CFrame.new(0,-.2,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/10,0)
			end
			Grip.Part0=FakeSL.Part1
			Grip.C0=GripC0*CFrame.new(0,0,-3.5)*CFrame.fromEulerAnglesXYZ(-math.pi/2,math.pi/2,0)
			for i=1, 5 do
				FakeL.C0=FakeL.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeR.C0=FakeR.C0*CFrame.fromEulerAnglesXYZ(-.015,0,0)
				FakeSL.C0=FakeSL.C0*CFrame.new(.15,.6,-.15)*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/5)
			end
			FakeSL.C0=LeftS.C0
			Grip.C0=GripC0*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,-math.pi/2)
			wait(.1)
			vv=Instance.new("BodyPosition")
			vv.P=5000
			vv.maxForce=Vector3.new(500000000000000000,0,500000000000000000)
			vv.position=CPlayer.Torso.Position+FaceForward().lookVector*4
			vv.Parent=CPlayer.Torso
			FakeS.C0=RightS.C0
			SlashSound(0.2)
			for i=1, 15 do
				Grip.C0=Grip.C0*CFrame.new(-.05,0,-.0125)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/200)
				FakeSL.C0=FakeSL.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/15*.66,0)
				STGyro.cframe=STGyro.cframe*CFrame.fromEulerAnglesXYZ(0,math.pi/7.5*2,0)
				FakeS.C0=FakeS.C0*CFrame.fromEulerAnglesXYZ(math.pi/18,0,0)
				Grip.C0=Grip.C0*CFrame.new(0,.15,0)
				vv.position=CPlayer.Torso.Position+FaceForward().lookVector*(2)
				for _,v in pairs(ALLCHILD()) do
					if v.className=="Model" then
						if v:FindFirstChild("Torso")~=nil and v:FindFirstChild("Humanoid")~=nil and v~=CPlayer then
							if (v.Torso.Position-Mid.Position).magnitude<=6 or (v.Torso.Position-Tip.Position).magnitude<=4 or (v.Torso.Position-Tool.Handle.Position).magnitude<=7 then
								Damage(v.Torso,8,Dir*4+(v.Torso.Position-CPlayer.Torso.Position).unit*14,false,.2,false,false)
							end
						end
					end
				end
				if i==6 then SlashSound(.168) end
				if i==14 then Tool.Handle.Pivot.DesiredAngle=.25 end
				wait()
			end
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)

			vv:Remove()
			ADeb=true
		end
		trailing=false
	else --Magic

	end

end

resWelds=function()
	FakeS.C0=RightS.C0
	FakeSL.C0=LeftS.C0
	FakeS.C1=RightS.C1
	FakeSL.C1=LeftS.C1
	FakeS.MaxVelocity=.15
	FakeSL.MaxVelocity=.15
	FakeR.MaxVelocity=.15
	FakeL.MaxVelocity=.15
	FakeR.C0=RightH.C0
	FakeL.C0=LeftH.C0
	FakeR.C1=RightH.C1
	FakeL.C1=LeftH.C1
end
resWelds2=function() --disregards right shoulder
	FakeSL.C0=LeftS.C0
	FakeSL.C1=LeftS.C1
	FakeSL.MaxVelocity=.15
	FakeR.MaxVelocity=.15
	FakeL.MaxVelocity=.15
	FakeR.C0=RightH.C0
	FakeL.C0=LeftH.C0
	FakeR.C1=RightH.C1
	FakeL.C1=LeftH.C1
end
Neck=nil
NeckC0=nil
Grip=nil
GripC0=nil
Animation=function(T,C)
	if C=="Stop" then
		if RightS==nil then
		RightS=T:FindFirstChild("Right Shoulder")
		if RightS==nil then
			return
		end
		LeftS=T:FindFirstChild("Left Shoulder")
		if LeftS==nil then
			return
		end

		RightH=T:FindFirstChild("Right Hip")
		if RightH==nil then
			return
		end
		LeftH=T:FindFirstChild("Left Hip")
		if LeftH==nil then
			return
		end
		end

		RightS.Parent=nil
		LeftS.Parent=nil
		FakeS.Part0=T
		FakeS.C0=RightS.C0
		FakeS.C1=RightS.C1	
		FakeS.Part1=T.Parent["Right Arm"]
		FakeS.Parent=T
		FakeS.DesiredAngle=0
		FakeS.MaxVelocity=.15

		FakeSL.Part0=T
		FakeSL.C0=LeftS.C0
		FakeSL.C1=LeftS.C1	
		FakeSL.Part1=T.Parent["Left Arm"]
		FakeSL.Parent=T
		FakeSL.DesiredAngle=0
		FakeSL.MaxVelocity=.15

		FakeL.Part0=T
		FakeL.C0=LeftH.C0
		FakeL.C1=LeftH.C1	
		FakeL.Part1=T.Parent["Left Leg"]
		FakeL.Parent=T
		FakeL.DesiredAngle=0
		FakeL.MaxVelocity=.15

		FakeR.Part0=T
		FakeR.C0=RightH.C0
		FakeR.C1=RightH.C1	
		FakeR.Part1=T.Parent["Right Leg"]
		FakeR.Parent=T
		FakeR.DesiredAngle=0
		FakeR.MaxVelocity=.15
		STGyro.Parent=Tool.Parent.Torso
		STGyro.cframe=STGyro.Parent.CFrame

		wait(.25)

		Neck=Tool.Parent.Torso.Neck
		NeckC0=Neck.C0

		Grip=Tool.Parent["Right Arm"].RightGrip
		GripC0=Grip.C0

		--[[Grip=Grip1:clone()
		Grip1:Remove()
		Grip.Parent=CPlayer["Right Arm"]
		Grip.Part0=CPlayer["Right Arm"]
		Grip.Part1=Tool.Handle]]

	elseif C=="Resume" then

		FakeS.Parent=nil
		FakeSL.Parent=nil
		FakeR.Parent=nil
		FakeL.Parent=nil
		RightS.Parent=T
		LeftS.Parent=T
		RightH.Parent=T
		LeftH.Parent=T
		STGyro.Parent=nil

		Neck.C0=NeckC0

	end
end

doAnim=function()
	if ComboPosition>1 or Grip==nil or Attacking==true then return end
	Grip=Tool.Parent["Right Arm"].RightGrip
	if CPlayer==nil or Tool.Parent.className~="Model" then return end
	if Mode.Value==0 then

		if Stance=="Standing" then

			Grip.Part0=FakeS.Part1
			Tool.Handle.Pivot.DesiredAngle=.25

			resWelds()
			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(-math.pi/32,math.pi/2,math.pi/48)
			STGyro.P=8000
			STGyro.D=2000
			STGyro.maxTorque=Vector3.new(5000000,5000000,5000000)
			Neck.DesiredAngle=-1.5

			FakeS.CurrentAngle=2
			FakeS.DesiredAngle=2
			FakeSL.DesiredAngle=-.3
			FakeSL.CurrentAngle=-.3
			FakeS.C0=RightS.C0*CFrame.new(.5,.75+math.cos(time() * 1)*.1,0)*CFrame.fromEulerAnglesXYZ(math.pi/3,math.pi/10,math.pi/8+math.cos(time() * 1)*.04)
			FakeSL.C0=LeftS.C0*CFrame.new(.1,-.75+math.cos(time() * 1)*.1,.55)*CFrame.fromEulerAnglesXYZ(-math.pi/3,math.pi/10,-math.cos(time() * 1)*.13)

			FakeL.C0=LeftH.C0*CFrame.new(.1,0,0)*CFrame.fromEulerAnglesXYZ(-math.pi/44,math.pi/20,0)
			FakeR.C0=RightH.C0*CFrame.fromEulerAnglesXYZ(-math.pi/24+math.cos(time() * 1)*.02,math.pi/24,0)
			FakeL.DesiredAngle=0 + math.cos(time() * 1)*.01
			FakeR.DesiredAngle=-0 + math.cos(time() * 1)*.01

			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(0,-.4+math.cos(time())*.05,0)
			
			Grip.C0=CFrame.new(-.7,2,2)*CFrame.fromEulerAnglesXYZ(math.pi/6+(math.cos(time() * 1)*.025),math.pi,-math.pi/12)
			Grip.C1=CFrame.new(0,0,0)

			Tool.Parent.Humanoid.WalkSpeed=12
		elseif Stance=="Running" then

			Grip.Part0=FakeS.Part1
			Tool.Handle.Pivot.DesiredAngle=.25

			STGyro.cframe=FaceForward()*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
			STGyro.P=0
			STGyro.D=0
			STGyro.maxTorque=Vector3.new(0,0,0)

			resWelds()
			Neck.DesiredAngle=0
			Neck.C0=NeckC0*CFrame.fromEulerAnglesXYZ(math.pi/8,0,0)

			FakeS.C0=RightS.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
			FakeS.DesiredAngle=1.3
			FakeS.CurrentAngle=1.3

			Grip.C0=CFrame.new(-.05,.76,-.6)*CFrame.fromEulerAnglesXYZ(-math.pi/16,-math.pi/4,math.pi/24)
			Grip.C1=CFrame.new(0,0,0)
			FakeL.DesiredAngle=math.cos(time() * 7)*.4
			FakeR.DesiredAngle=math.cos(time() * 7)*.4
			FakeSL.DesiredAngle=math.cos(time() * 7)*-.5

			Tool.Parent.Humanoid.WalkSpeed=12+WalkIncrease
			trailing=false
		end

	else

	end

end

ed=true
jd=true
Jump=function()
	if not jd then return end
	jd=false
	Stance="Jumping"
	print("POOTJUMPHERE")
	CurrentDown=""
	vu=Instance.new("BodyVelocity")
	vu.P=5000
	vu.maxForce=Vector3.new(0,5000000000000000000000,0)
	vu.velocity=Vector3.new(0,45,0)
	vu.Parent=CPlayer.Torso
	game:GetService("Debris"):AddItem(vu,.3)
	if CPlayer.Torso:FindFirstChild("BodyPosition")~=nil then CPlayer.Torso.BodyPosition.Parent=nil end
	wait(.1)
	TTT=CPlayer.Torso
	if TTT~=nil then
		OL,LOC=workspace:FindPartOnRay(Ray.new(TTT.Position,(TTT.Position-(TTT.Position-Vector3.new(0,-5,0))).unit*50),CPlayer)
	end
	wait(1.5)
	float()
	print("DON")
	jd=true
end
GUI=nil
GuiHandle=function()
	GUI=script.ManaGui:clone()
	GUI.Parent=game.Players:GetPlayerFromCharacter(CPlayer).PlayerGui
	while GUI.Parent~=nil do
		GUI.Main.Layer.Layer.Size=UDim2.new(Mana.Value/MaxMana,0,.9,0)
		GUI.Main.Amount.Text=Mana.Value

		for _z,z in pairs(Cooldowns) do
			local pesin=GUI.Main.Cooldowns:FindFirstChild(string.upper(tostring(_z)))
			if z<=0 then
				pesin.TextLabel.Text=string.upper(tostring(_z))
			else
				pesin.TextLabel.Text=z
			end
			local pesin=GUI.Main.Cooldowns:FindFirstChild(string.upper(tostring(ClickActive)))
			if pesin~=nil then
				pesin.Style="ChatBlue"
			end
			for _v,__v in pairs(GUI.Main.Cooldowns:children()) do
				if __v ~= pesin then
					__v.Style="RobloxRound"
				end
			end

		end
		wait(.25)
	end
end
Run=function(speed)
	if Attacking==false then
	if speed>0 and (CPlayer.Torso.Velocity-Vector3.new(0,0,0)).magnitude>=11.9 then
		Stance="Running"
	else
		Stance="Standing"
	end
	end
end
ed=true
poot=function(mouse)
	mouse.Button1Down:connect(function() if ClickActive==nil then Attack() else DoClick(mouse.Target) end end)
	mouse.KeyDown:connect(function(x) Special(x) end)

	while Tool.Parent.className=="Model" do
		if ClickActive==nil then
			mouse.Icon=""
		else
			mouse.Icon="rbxasset://textures\\GunCursor.png"
		end
		wait()
	end

end
Tool.Equipped:connect(poot)
eq=function(mouse)
	if not ed then return end
	ed=false

	wait(.2)

	CPlayer=Tool.Parent
	Neck=CPlayer.Torso.Neck
	Animation(CPlayer.Torso,"Stop")
	cJum=CPlayer.Humanoid.Jumping:connect(Jump)
	cRun=CPlayer.Humanoid.Running:connect(Run)
	CHP=CPlayer.Humanoid.Health

	coroutine.resume(coroutine.create(GuiHandle))

	print("Herpquip")
	wait()
	ed=true
end

deq=function()
	if not ed then return end
	ed=false
	if Neck~=nil then
		Neck.DesiredAngle=0
	end
	GUI:Remove()
	cJum:disconnect()
	cRun:disconnect()
	Animation(CPlayer.Torso,"Resume")
	Neck.C0=NeckC0
	wait()
	ed=true
end
Tool.Equipped:connect(eq)
Tool.Unequipped:connect(deq)

wait(1)

coroutine.resume(coroutine.create(function()
	while true do
		if Mana.Value<MaxMana then
			Mana.Value=Mana.Value+1
		end
		wait(1/Regen)
	end
end))

coroutine.resume(coroutine.create(function()
	while true do
		wait(1)
		for __,vv in pairs(Cooldowns) do
			Cooldowns[__]=vv-1
		end
	end
end))

while true do
	if time()-lastattack>2 then
		ComboPosition=1
		Comboing=false
	end
	if Attacking==false and Comboing==false and Tool.Parent.className~="Backpack" then
		doAnim()
	end
	if trailing==true then
		manualtrail(Tip)
	end
	thisposition=Tip.Position
	wait()
end
end,o203)
end))

o204 = Create("Script",{
["Name"] = "Trail",
["Parent"] = o203,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Saz
-- A useful script for creating trails.

wait()
p=Instance.new("Part")
p.Color=script.Color.Value
p.TopSurface=0
p.BottomSurface=0
p.Reflectance=.1
p.Name=script.Parent.Name.."TRAIL"
p.Anchored=true
p.CanCollide=false
p.formFactor="Symmetric"
p.Size=Vector3.new(1,1,1)
m=Instance.new("BlockMesh")
m.Scale=Vector3.new(script.Size.Value.x,script.Size.Value.y,0)
m.Parent=p

p.Size=Vector3.new(script.Size.Value.x,script.Size.Value.y,0)

lastposition=script.Parent.Position
thisposition=script.Parent.Position

create=function()

	thisposition=script.Parent.Position
	direction=-(lastposition-thisposition).unit
	start=lastposition+direction*((thisposition-lastposition).magnitude/2)
	
	n=p:clone()
	n.CFrame=CFrame.new(start,thisposition)
	n.Mesh.Scale=n.Mesh.Scale+Vector3.new(0,0,(lastposition-thisposition).magnitude)
	n.Parent=workspace
	s=script.Script:clone()
	s.Disabled=false
	s.Parent=n

	lastposition=(n.CFrame+(direction*((thisposition-lastposition).magnitude/2))).p

end

while true do

	wait()
	create()

end
	
end,o204)
end))
o205 = Create("Color3Value",{
["Name"] = "Color",
["Parent"] = o204,
["Value"] = Color3.new(0.8, 0.6, 1),
})
o206 = Create("Vector3Value",{
["Name"] = "Size",
["Parent"] = o204,
["Value"] = Vector3.new(0.100000001, 0.200000003, 0),
})
o207 = Create("Script",{
["Parent"] = o204,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait()
for i=1, script.FadeTime.Value do
	script.Parent.Transparency=i/script.FadeTime.Value
	wait()
end
script.Parent:Remove()
end,o207)
end))
o208 = Create("IntValue",{
["Name"] = "FadeTime",
["Parent"] = o207,
["Value"] = 50,
})
o209 = Create("Script",{
["Name"] = "Slow",
["Parent"] = o203,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(.05)
Hum=script.Parent.Humanoid
Hum.WalkSpeed=Hum.WalkSpeed/((100+script.Percent.Value)/100)
wait(script.Duration.Value/100)
Hum.WalkSpeed=Hum.WalkSpeed*((100+script.Percent.Value)/100)
script:Remove()
end,o209)
end))
o210 = Create("IntValue",{
["Name"] = "Duration",
["Parent"] = o209,
})
o211 = Create("IntValue",{
["Name"] = "Percent",
["Parent"] = o209,
})
o212 = Create("ScreenGui",{
["Name"] = "ManaGui",
["Parent"] = o203,
})
o213 = Create("Frame",{
["Name"] = "Main",
["Parent"] = o212,
["Position"] = UDim2.new(0.40000000596046,0,0.69999998807907,0),
["Size"] = UDim2.new(0.20000000298023,0,0.125,0),
["Style"] = Enum.FrameStyle.RobloxRound,
["Draggable"] = true,
})
o214 = Create("Frame",{
["Name"] = "Layer",
["Parent"] = o213,
["Transparency"] = 0.25,
["Position"] = UDim2.new(0.10000000149012,0,0.30000001192093,0),
["Size"] = UDim2.new(0.80000001192093,0,0.30000001192093,0),
["BackgroundColor3"] = Color3.new(0.109804, 0.109804, 0.109804),
["BackgroundTransparency"] = 0.25,
})
o215 = Create("Frame",{
["Name"] = "Layer",
["Parent"] = o214,
["Position"] = UDim2.new(0,0,0.050000000745058,0),
["Size"] = UDim2.new(1,0,0.89999997615814,0),
["BackgroundColor3"] = Color3.new(0, 0.2, 0.8),
})
o216 = Create("TextLabel",{
["Parent"] = o213,
["Position"] = UDim2.new(0.5,0,0.050000000745058,0),
["Text"] = "Mana",
["BackgroundColor3"] = Color3.new(0, 0.4, 1),
["BorderColor3"] = Color3.new(1, 1, 1),
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size24,
["TextColor3"] = Color3.new(0.2, 0.2, 1),
})
o217 = Create("TextLabel",{
["Name"] = "Amount",
["Parent"] = o213,
["Position"] = UDim2.new(0.5,0,0.81999999284744,0),
["Text"] = "(500)",
["BackgroundColor3"] = Color3.new(0, 0.4, 1),
["BorderColor3"] = Color3.new(1, 1, 1),
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(0.2, 0.2, 1),
})
o218 = Create("Frame",{
["Name"] = "Cooldowns",
["Parent"] = o213,
["Position"] = UDim2.new(-0.125,0,-0.80000007152557,0),
["Size"] = UDim2.new(1.25,0,0.60000002384186,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o219 = Create("Frame",{
["Name"] = "Q",
["Parent"] = o218,
["Position"] = UDim2.new(0,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o220 = Create("TextLabel",{
["Parent"] = o219,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o221 = Create("Frame",{
["Name"] = "E",
["Parent"] = o218,
["Position"] = UDim2.new(0.15000000596046,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o222 = Create("TextLabel",{
["Parent"] = o221,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o223 = Create("Frame",{
["Name"] = "R",
["Parent"] = o218,
["Position"] = UDim2.new(0.30000001192093,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o224 = Create("TextLabel",{
["Parent"] = o223,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o225 = Create("Frame",{
["Name"] = "T",
["Parent"] = o218,
["Position"] = UDim2.new(0.5,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o226 = Create("TextLabel",{
["Parent"] = o225,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o227 = Create("Frame",{
["Name"] = "Y",
["Parent"] = o218,
["Position"] = UDim2.new(0.71249997615814,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o228 = Create("TextLabel",{
["Parent"] = o227,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o229 = Create("Frame",{
["Name"] = "U",
["Parent"] = o218,
["Position"] = UDim2.new(0.86250001192093,0,-0.52499997615814,0),
["Size"] = UDim2.new(0.14000000059605,0,2,0),
["Style"] = Enum.FrameStyle.RobloxRound,
})
o230 = Create("TextLabel",{
["Parent"] = o229,
["Position"] = UDim2.new(0.5,0,0.5,0),
["Text"] = "Q",
["Font"] = Enum.Font.ArialBold,
["FontSize"] = Enum.FontSize.Size18,
["TextColor3"] = Color3.new(1, 1, 1),
["TextStrokeColor3"] = Color3.new(0, 0, 1),
})
o231 = Create("Script",{
["Name"] = "WardScript",
["Parent"] = o203,
["Disabled"] = true,
})
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Saz
--Programmed atm to work when people reach a certain threashold of movement speed.

wait(1)

NUM=math.random(0,500000)

GetHumans=function()
	Chars={}
	Things=workspace:GetChildren()
	for i,v in pairs(Things) do
		if v.className=="Model" then
			Human=v:FindFirstChild("Humanoid")
			PTorso=v:FindFirstChild("Torso")
			vv=game.Players:GetPlayerFromCharacter(v)
			if Human~=nil and PTorso~=nil and Human~=script.Owner.Value.Humanoid then
				table.insert(Chars,PTorso)
			end
		end
	end
	return Chars
end

Flare=function(part)

	if part:FindFirstChild("FLARECOOLDOWN"..NUM)~=nil then return end

	t=Instance.new("IntValue")
	t.Name="FLARECOOLDOWN"..NUM
	t.Parent=part
	game:GetService("Debris"):AddItem(t,3.5)

	s=script.Fire:clone()
	s.Parent=script.Parent
	s:Play()
	game:GetService("Debris"):AddItem(s,2)

	local p=Instance.new("Part")
	p.Name="FadeTrail"
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=BrickColor.new("Royal purple")
	p.formFactor="Symmetric"
	p.Size=Vector3.new(1,1,1)
	p.Anchored=true
	p.Reflectance=0.1
	p.CanCollide=false
	p.CFrame=CFrame.new(script.Parent.Position)
	local mm=Instance.new("SpecialMesh")
	mm.Parent=p
	mm.MeshType="Sphere"
	mm.Scale=Vector3.new(1.2,1.2,1.2)
	p.Parent=script.Parent.Parent

	origin=p.CFrame.p

	po=p

	s=script.Fire:clone()
	s.Parent=po
	s.Pitch=.6
	s:Play()
	game:GetService("Debris"):AddItem(s,15)
	s=script.Swoosh:clone()
	s.Parent=po
	s.Pitch=.2
	s:Play()
	game:GetService("Debris"):AddItem(s,15)



	dist=(part.Position-origin).magnitude

	for i=1, dist/5 do
		wait()

		nextpos=origin:Lerp(part.Position,(i+2)/(dist/3))
		dir=(part.Position-nextpos).unit
		parto=game.Workspace:FindPartOnRay(Ray.new(po.Position,dir*2),script.Parent.Parent)

		if parto~=nil and i>=5 then
			if parto.Name~="FadeTrail" then
				print(part.Name,"AAAAA")
				break
			end
		end

		po.CFrame=CFrame.new(origin:Lerp(part.Position,i/(dist/5)))

		p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=po.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
		local mm=Instance.new("BlockMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(2.3,2.3,2.3)
		p.Parent=script.Parent.Parent
		coroutine.resume(coroutine.create(function(p,c) for i=1, 15 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale-Vector3.new(.1,.1,.1) p.Transparency=i/15 wait() end p:Remove() end),p,t)

	end

	po.Transparency=1

	if (po.Position-part.Position).magnitude<=7 then
		part.Parent.Humanoid:TakeDamage(13)
		part.Parent.Humanoid.PlatformStand=true
		part.RotVelocity=Vector3.new(math.random(-2,2),40,math.random(-2,2))
		part.Velocity=dir*2+Vector3.new(0,4,0)
		coroutine.resume(coroutine.create(function(h) for i=1, 5 do wait(.1) h:TakeDamage(1) end h.PlatformStand=false end),part.Parent.Humanoid)
	end
	LOL={Vector3.new(.5,0,1),Vector3.new(.25,0,.5),Vector3.new(0,0,0)}

	s=script.FireExplode:clone()
	s.Parent=po
	s:Play()

	for i=1, 3 do

		p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.CanCollide=false
		p.CFrame=po.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)
		local mm=Instance.new("BlockMesh")
		mm.Parent=p
		mm.Scale=Vector3.new(2.4,2.4,2.4)
		p.Parent=script.Parent.Parent
		coroutine.resume(coroutine.create(function(p,c) for i=1, 10 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.1,.1,.1)*5 p.Transparency=i/15 wait() end p:Remove() end),p,t)


		p=Instance.new("Part")
		p.Name="FadeTrail"
		p.TopSurface=0
		p.BottomSurface=0
		p.BrickColor=BrickColor.new("Really black")
		p.formFactor="Symmetric"
		p.Size=Vector3.new(1,1,1)
		p.Anchored=true
		p.Transparency=.1*i
		p.CanCollide=false
		p.CFrame=po.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10),math.random(-10,10),0)+dir*3
		mm=script.Mesh:clone()
		mm.Scale=Vector3.new(.5*i,.5*i,.5*i)
		mm.VertexColor=LOL[i]
		mm.Parent=p
		coroutine.resume(coroutine.create(function(p,c) for i=1, 30 do p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/1000,.2,math.random(-100,100)/1000) p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.1,.1,.1) p.Transparency=p.Transparency+.03 wait() end p:Remove() end),p,t)
		p.Parent=script.Parent.Parent

	end

	for i=1, 50 do
		wait(.008)
		po.Swoosh.Volume=po.Swoosh.Volume-.02
	end
	po.Swoosh:Stop()

	po:Remove()

end

for i=1, 300 do
	wait(.085)
	if script.Owner.Value.Parent==nil then
		break
	end
	if script.Owner.Value.Humanoid.Health<=0 then
		break
	end

	for _,v in pairs(GetHumans()) do
		if script.Owner.Value.Humanoid.WalkSpeed>=v.Parent.Humanoid.WalkSpeed+5 then
			coroutine.resume(coroutine.create(function(part) wait(math.random(10,50)/80) Flare(part) end),v)
		end
		if (v.Position-script.Parent.Position).magnitude<=25 then
			DMG=((v.Parent.Humanoid.MaxHealth/100) / ((v.Position-script.Parent.Position).magnitude/8))/2
			v.Parent.Humanoid:TakeDamage(DMG)
		end
	end

end

script.Parent.Parent:Remove()
	
end,o231)
end))
o232 = Create("SpecialMesh",{
["Parent"] = o231,
["MeshId"] = "http://www.roblox.com/Asset/?id=9982590",
["Scale"] = Vector3.new(1.5, 1.5, 1.5),
["TextureId"] = "http://www.roblox.com/asset/?id=22153272",
["VertexColor"] = Vector3.new(0.5, 0, 1),
["MeshType"] = Enum.MeshType.FileMesh,
})
o233 = Create("Sound",{
["Name"] = "FireExplode",
["Parent"] = o231,
["Pitch"] = 0.25,
["SoundId"] = "http://www.roblox.com/asset/?id=84318179",
["Volume"] = 1,
})
o234 = Create("Sound",{
["Name"] = "Fire",
["Parent"] = o231,
["Pitch"] = 0.5,
["SoundId"] = "http://www.roblox.com/asset/?id=11998777 ",
["Volume"] = 1,
})
o235 = Create("Sound",{
["Name"] = "Swoosh",
["Parent"] = o231,
["Pitch"] = 0.5,
["SoundId"] = "rbxasset://sounds/Rocket whoosh 01.wav",
["Volume"] = 1,
["Looped"] = true,
})
o236 = Create("ObjectValue",{
["Name"] = "Owner",
["Parent"] = o231,
})
o237 = Create("IntValue",{
["Name"] = "Mana",
["Parent"] = o1,
["Value"] = 600,
})
o238 = Create("Part",{
["Name"] = "Handle95",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(26.7400017, 8.94000053, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(26.7400017, 8.94000053, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(1, 1, 1),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o239 = Create("Part",{
["Name"] = "Handle96",
["Parent"] = o1,
["BrickColor"] = BrickColor.new("Really black"),
["Reflectance"] = 0.20000000298023,
["Transparency"] = 1,
["Position"] = Vector3.new(24.9900017, 6.19000006, -0.0400000028),
["Rotation"] = Vector3.new(0, 0, 90),
["CFrame"] = CFrame.new(24.9900017, 6.19000006, -0.0400000028, 0, -1, 0, 1, 0, -0, 0, 0, 1),
["CanCollide"] = false,
["FormFactor"] = Enum.FormFactor.Symmetric,
["Size"] = Vector3.new(3, 3, 3),
["BottomSurface"] = Enum.SurfaceType.Smooth,
["TopSurface"] = Enum.SurfaceType.Smooth,
["Color"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
})
o240 = Create("IntValue",{
["Name"] = "Mode",
["Parent"] = o1,
})
o241 = Create("SpecialMesh",{
["Name"] = "SpikeMesh",
["Parent"] = o1,
["MeshId"] = "http://www.roblox.com/asset/?id=1033714",
["Scale"] = Vector3.new(0.75, 5, 0.75),
["MeshType"] = Enum.MeshType.FileMesh,
})
o242 = Create("SpecialMesh",{
["Name"] = "AAAA",
["Parent"] = o1,
["MeshId"] = "http://www.roblox.com/asset/?id=1185246",
["Scale"] = Vector3.new(20, 20, 0),
["TextureId"] = "http://www.roblox.com/asset/?id=21315275",
["VertexColor"] = Vector3.new(0.25, 0, 0.5),
["MeshType"] = Enum.MeshType.FileMesh,
})
o243 = Create("SpecialMesh",{
["Parent"] = o1,
["MeshId"] = "http://www.roblox.com/Asset/?id=9982590",
["Scale"] = Vector3.new(1.5, 1.5, 1.5),
["TextureId"] = "http://www.roblox.com/asset/?id=22153272",
["VertexColor"] = Vector3.new(0, 0, 0),
["MeshType"] = Enum.MeshType.FileMesh,
})
 
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game.Players.LocalPlayer.Backpack
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
