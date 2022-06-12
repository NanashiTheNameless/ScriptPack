P1 = game.Players.rigletto --Your name here.
TrackingKey = ("f") --Allows you to hide your Bola for safe keeping until you strike.
ReturnKey = ("r") --Returns to it's master.
AbortKey = ("e") --Lets you abort your current tatget.
TeleportKey = ("q") --Lets you teleport to the Bola's current X.Y.Z position.
--------------------------------------------------------
--Do Not Edit Below, or you may break the script.
--If You Do and Are Not an Idiot, Go Ahead, This Code Is Ment To Be Read.
--If You Do, I ask That You Still Give Me Credit and This is My First SB Made Script!
--------------------------------------------------------
print("Started Creating")
ToolH = Instance.new("HopperBin")
ToolH.Parent = P1.Backpack
ToolH.Name = ("Noob Bola")

OV = Instance.new("ObjectValue")
OV.Parent = ToolH
OV.Name = ("Target")

TValue = Instance.new("BoolValue")
TValue.Parent = ToolH
TValue.Name = ("Teleport")

Rocket = Instance.new("Part")
Rocket.Parent = ToolH
Rocket.Position = P1.Character.Head.Position
Rocket.Name = ("Rocket")
Rocket.BrickColor = BrickColor.new("Reddish brown")
Rocket.FormFactor = ("Custom")
Rocket.Size = Vector3.new(1,1,1)

RP = Instance.new("RocketPropulsion")
print("Creating RP")
RP.Parent = Rocket
RP.Name = ("RP")
RP.MaxSpeed = 100
RP.ThrustP = 50
RP.TurnD = 500
RP.TurnP = 30000

Fire = Instance.new("Fire")
Fire.Parent = Rocket
Fire.Heat = 0
Fire.Size = 4

Sparkles = Instance.new("Sparkles")
Sparkles.Parent = Rocket

Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Rocket
Mesh.MeshType = ("Sphere")
Mesh.Scale = Vector3.new(.5,.5,.5)

script.Parent = ToolH
script.Name = ("RS")
print("Done Creating")
--------------------------------------------------------
--v-Needed Values-v
--------------------------------------------------------
P1 = P1.Character
Rocket.CFrame = P1.Torso.CFrame + (P1.Torso.CFrame.lookVector * 5)
Target = script.Parent.Target
P1.Humanoid.MaxHealth = math.huge
Propulsion = Rocket.RP
TeleportV = TValue
--------------------------------------------------------
--^-Needed Values-^
--------------------------------------------------------
--Real Functions Below. Pretty Simple Huh?
--------------------------------------------------------
function onButton1Down(mouse)
Target.Value = mouse.Target
wait()
Propulsion.Target = Target.Value
Propulsion:Fire()
end

function onKeyUp(key) 
if (key~=nil) then 
		key = key:lower() 
if key == (TeleportKey) then
wait(.1)
TeleportV.Value = false
end
end
end

function onKeyDown(key) 
if (key~=nil) then 
		key = key:lower() 
if key == (TrackingKey) then
Tracker(Zon)
end
if key == (ReturnKey) then
Return(Zon)
end
if key == (AbortKey) then
Abort(Zon)
end
if key == (TeleportKey) then
TeleportV.Value = true
Teleport(Zon)
end
end
end

function Tracker(Zon)
Do = true
if Rocket.Parent == game.Workspace and Do == true then
Do = false
Rocket.Parent = script.Parent
end
if Rocket.Parent == script.Parent and Do == true then
Do = false
Rocket.Parent = game.Workspace
Rocket.Touched:connect(BTouched)
end
end

function Return(Zon)
Propulsion.Target = P1.Torso
Propulsion:Fire()
end

function Abort(Zon)
Propulsion:Abort()
end

function Teleport(Zon)
while wait(.001) and TeleportV.Value == true do
P1.Torso.CFrame = CFrame.new(Rocket.Position)
end
end

function BTouched(Zon)
if Zon.Anchored == false and Zon.Parent.Name ~= P1.Name and Zon.Parent.Parent.Name ~= P1.Name then
Zon:remove()
end
end

function onSelected(mouse) 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
mouse.KeyUp:connect(onKeyUp)
mouse.Icon = "http://www.roblox.com/asset/?id=92136234" 
print("Selected")
end 

script.Parent.Selected:connect(onSelected)

--mediafire gtfo password