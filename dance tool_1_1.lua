h = Instance.new("HopperBin")
h.Parent = Game.Players.acb227.Backpack
h.Name = "Dance" 
script.Parent = h

function dance()

local me = script.Parent.Parent.Character.Torso

local RightShoulder = me["Right Shoulder"]
local LeftShoulder = me["Left Shoulder"]
local RightHip = me["Right Hip"]
local LeftHip = me["Left Hip"]

for i=1, 9 do 

	for i=1, 15 do

RightShoulder.MaxVelocity = 0.35
LeftShoulder.MaxVelocity = 0.35


RightShoulder.DesiredAngle = -3.14
	LeftShoulder.DesiredAngle = 0
	RightHip.DesiredAngle = 1.57
	LeftHip.DesiredAngle = 0
	wait(0)
end
	for i=1, 14 do

RightShoulder.MaxVelocity = 0.35
LeftShoulder.MaxVelocity = 0.35

RightShoulder.DesiredAngle = 0
	LeftShoulder.DesiredAngle = -3.14
	RightHip.DesiredAngle = 0
	LeftHip.DesiredAngle = 1.57

wait(0) end


RightShoulder.MaxVelocity = 0.15
LeftShoulder.MaxVelocity = 0.15
end

end

function go(mouse)

mouse.Button1Down:connect(function() dance() end)

end

script.Parent.Selected:connect(go)


local bodyVelocity = "";
local bodyAngularVelocity = "";

local bin = script.Parent;

function onButton1Down(mouse)
	local human = bin.Parent.Parent.Character;

	if human == nil then
		return;
	end

	local torso = human:FindFirstChild("Torso");

	if torso == nil then
		return;
	end

	local bv = Instance.new("BodyVelocity");
	bodyVelocity = bv;

	bv.maxForce = Vector3.new(1e+009, 1e+009, 1e+009);

	local velocity = torso.Velocity;
	velocity = velocity - Vector3.new(0, velocity.y, 0);

	bv.velocity = velocity;

	bv.Parent = torso;

	local bav = Instance.new("BodyAngularVelocity");	
	bodyAngularVelocity = bav;
	bav.maxTorque = Vector3.new(1e+009, 1e+009, 1e+009);

	bav.angularvelocity = Vector3.new(0,90,0);

	bav.Parent = torso;
end

function onButton1Up()
	if bodyVelocity == "" then
		return
	end

	bodyVelocity:Remove();

	if bodyAngularVelocity == "" then
		return;
	end

	bodyAngularVelocity:Remove();
end

function onSelect(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end);
	mouse.Button1Up:connect(onButton1Up);
end

bin.Selected:connect(onSelect);
bin.Deselected:connect(onButton1Up);
