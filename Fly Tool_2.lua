
Name = "Fly"
pi = 3.141592653589793238462643383279502884197163993751
a = 0
s = 0
ndist = 13
rs = 0.025
siz = Vector3.new(1, 1, 1)
form = 0
flow = {}
function CFC(P1,P2)
	local Place0 = CFrame.new(P1.CFrame.x,P1.CFrame.y,P1.CFrame.z) 
	local Place1 = P2.Position
	P1.Size = Vector3.new(P1.Size.x,P1.Size.y,(Place0.p - Place1).magnitude) 
	P1.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
end
function checktable(table, parentneeded)
	local i
	local t = {}
	for i = 1, #table do
		if table[i] ~= nil then
			if string.lower(type(table[i])) == "userdata" then
				if parentneeded == true then
					if table[i].Parent ~= nil then
						t[#t + 1] = table[i]
					end
				else
					t[#t + 1] = table[i]
				end
			end
		end
	end
	return t
end
if script.Parent.Name ~= Name then
User = game:service("Players").LocalPlayer
HB = Instance.new("HopperBin")
HB.Name = Name
HB.Parent = User.Backpack
script.Parent = HB
end
speed = 100
script.Parent.Selected:connect(function(mar)
	s = 1
	torso = script.Parent.Parent.Parent.Character.Torso
	LeftShoulder = torso["Left Shoulder"]
	RightShoulder = torso["Right Shoulder"]
	LeftHip = torso["Left Hip"]
	RightHip = torso["Right Hip"]
	human = script.Parent.Parent.Parent.Character.Humanoid
	bv = Instance.new("BodyVelocity")
	bv.maxForce = Vector3.new(0,math.huge,0)
	bv.velocity = Vector3.new(0,0,0)
	bv.Parent = torso
	bg = Instance.new("BodyGyro")
	bg.maxTorque = Vector3.new(0,0,0)
	bg.Parent = torso 
	connection = mar.Button1Down:connect(function()
		a = 1
		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		bg.maxTorque = Vector3.new(900000,900000,900000)
		bg.cframe = CFrame.new(torso.Position,mar.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
		bv.velocity = CFrame.new(torso.Position,mar.hit.p).lookVector * speed
		moveconnect = mar.Move:connect(function()
			bg.maxTorque = Vector3.new(900000,900000,900000)
			bg.cframe = CFrame.new(torso.Position,mar.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
			bv.velocity = CFrame.new(torso.Position,mar.hit.p).lookVector * speed
		end)
		upconnect = mar.Button1Up:connect(function()
			a = 0
			moveconnect:disconnect()
			upconnect:disconnect()
			bv.velocity = Vector3.new(0,0,0)
			bv.maxForce = Vector3.new(0,math.huge,0)
			torso.Velocity = Vector3.new(0,0,0)
			bg.cframe = CFrame.new(torso.Position,torso.Position + Vector3.new(torso.CFrame.lookVector.x,0,torso.CFrame.lookVector.z))
			wait(1)
		end)
	end)
end)
script.Parent.Deselected:connect(function()
a = 0
s = 0
bv:remove()
bg:remove()
if connection ~= nil then
connection:disconnect()
end
if moveconnect ~= nil then
moveconnect:disconnect()
end
if upconnect ~= nil then
upconnect:disconnect()
end
while s == 0 do
	wait()
	if #flow > 0 then
		flow = checktable(flow, true)
		local i
		for i = 1,#flow do
			flow[i].Transparency = flow[i].Transparency + rs
			if flow[i].Transparency >= 1 then flow[i]:remove() end
		end
	end
end
end)
while true do
	wait()
	if s == 1 then
		return
	end
end
