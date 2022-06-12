--liek a boss with coke
local plr = game:service'Players'.LocalPlayer
local mouse = plr:GetMouse()
local char = plr.Character
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")

local debounce = false

function part(parent, size, formfactor,  color, collide, transparency)
        local p=Instance.new("Part", parent)
        p.FormFactor=formfactor
        p.CanCollide=false
        p.Size=size
        p.Locked=true
                p.Transparency=transparency
        p.Position=torso.Position
        p.BrickColor=color
        p.FrontSurface="SmoothNoOutlines" 
        p.BackSurface="SmoothNoOutlines"         
        p.LeftSurface="SmoothNoOutlines" 
        p.BottomSurface="SmoothNoOutlines" 
        p.TopSurface="SmoothNoOutlines"  
        p.RightSurface="SmoothNoOutlines" 
        return p
end
function weld(c0, c1, part1, part0)
        local wel=Instance.new("Weld", main)
        wel.Part0 = part0
        wel.Part1 = part1
        wel.C0 = c0
        wel.C1 = c1
        return wel
end
function specialmesh(parent, meshType, scale, meshId, texture)
        local mesh = Instance.new("SpecialMesh", parent)
        mesh.Scale = scale
        mesh.MeshType = meshType
        mesh.MeshId = meshId
		mesh.TextureId = texture
        return mesh
end

tool = Instance.new("Tool", plr.Backpack)
tool.Name = "Coke"
tool.GripForward = Vector3.new(-0.976, 0, -0.217)
tool.GripPos = Vector3.new(0.03, 0, 0)
tool.GripRight = Vector3.new(0.217, 0, -0.976)
tool.GripUp = Vector3.new(0, 1, 0)

local p = part(tool, Vector3.new(1, 1.2, 1), "Custom", BrickColor.new("Mid gray"), false, 0)
p.Name = "Handle"
local m = specialmesh(p, "FileMesh", Vector3.new(1.2, 1.2, 1.2), "http://www.roblox.com/asset/?id=10470609", "http://www.roblox.com/asset/?id=10470600")
	

tool.Equipped:connect(function(mouse)
ar = Instance.new("Part", char)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar:breakJoints()


local fakel = Instance.new("Weld", char)
fakel.Part0 = char.Torso
fakel.Part1 = ar
fakel.C0 = CFrame.new(1.5, 0.45, 0)
welditbro = Instance.new("Weld", char)
welditbro.C0 = CFrame.new(0, 0.45, 0)
welditbro.Part0 = ra
welditbro.Part1 = ar

for i = 0, 90, 30 do
	fakel.C0 = CFrame.new(1.5, 0.45, 0) * CFrame.Angles(math.rad(i), 0, 0)
	wait()
end

mouse.Button1Down:connect(function(mouse)
	if debounce then return end
	debounce = true
	for i = 90, 120, 10 do
		fakel.C0 = CFrame.new(1.5, 0.45, 0) * CFrame.Angles(math.rad(i/2), math.rad(i), math.rad(i/2))
		wait()
	end
	wait(1)
    for i = 120, 90, -10 do
		fakel.C0 = CFrame.new(1.5, 0.45, 0) * CFrame.Angles(math.rad(i/2), math.rad(i), math.rad(i/2))
		wait()
end
	fakel.C0 = CFrame.new(1.5, 0.45, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local flood = part(workspace, workspace:findFirstChild("Base").Size, "Custom", BrickColor.new("Brown"), false, 0)
	flood.Anchored = true
	flood.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then
			hit.Parent:BreakJoints()
		end
	end)
	flood.CFrame = workspace:FindFirstChild("Base").CFrame * CFrame.new(0, -2, 0)
	for _ = 0, 6, 0.1 do
	flood.CFrame = flood.CFrame * CFrame.new(0, 0.1, 0)
	wait()
	end
	flood:Destroy()
	
	debounce = false
	end)
	

end)

tool.Unequipped:connect(function(mouse)
	pcall(function()
	ar:Destroy()
	fakel:Destroy()
	welditbro:Destroy()
	end)
	end)



