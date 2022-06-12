player = game.Players.xSoulStealerx
char = player.Character
rleg = char["Right Leg"]

bri = Instance.new("Part")
bri.Parent = char
bri.formFactor = "Symmetric"
bri.Size = Vector3.new(1,1,1)
bri.Shape = "Ball"
bri.CFrame = rleg.CFrame * CFrame.new(0,0.5,0)
bri.Transparency = 1
mes = Instance.new("SpecialMesh")
mes.MeshType = "Sphere"
mes.Parent = bri
mes.Scale = Vector3.new(1.3,1.3,1.3)

bri:breakJoints()

w = Instance.new("Weld")
w.Parent = char.Torso
w.Part0 = w.Parent
w.Part1 = bri
w.C1 = CFrame.new(-0.5,1,0)

orig = CFrame.new(0,1,0)

kick = Instance.new("Weld")
kick.Parent = bri
kick.Part0 = nil
kick.Part1 = nil
kick.C1 = orig

if script.Parent.className ~= "HopperBin" then
a = Instance.new("HopperBin")
a.Parent = game.Players.xSoulStealerx.Backpack
a.Name = "KickBalls"
script.Parent = a
end

function keydown(key) 
	key = key:lower() 
	if (key == "f") then 
		kick.Part0 = kick.Parent
		kick.Part1 = rleg
		kick.C1 = orig
		enna = false
		for i=1, 4 do
			kick.C1 = kick.C1 * CFrame.fromEulerAnglesXYZ(-0.4,0,0)
			wait()
		end
		wait(0.2)
		enna = true
		wait(0.3)
		for i=1, 8 do
			kick.C1 = kick.C1 * CFrame.fromEulerAnglesXYZ(0.15,0,0)
			wait()
		end
		kick.C1 = orig
		kick.Part0 = nil
		kick.Part1 = nil
	end
end
enna = true

function select(mouse)
	mouse.KeyDown:connect(keydown)
end


script.Parent.Selected:connect(select)

rleg.Touched:connect(function(hit)
	if enna == true then return end
	local hum = hit.Parent:findFirstChild("Humanoid")
	if hum ~= nil then
		hum.Health = hum.Health - 20
	end
end)

