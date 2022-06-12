script.Parent=nil

Player=game:GetService("Players").LocalPlayer

game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=32054761")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=90718752")

InUse=false
Mode="Normal"
echo=true
Distance=30

Hand=Instance.new("Part")
Hand.CFrame=CFrame.new(0,50,0)
Hand.Name="Master Hand"
Hand.CanCollide=true
Hand.Archivable=true
Hand.Size=Vector3.new(21,27,6.2)
Hand.BrickColor=BrickColor.new("White")
Hand.CFrame=CFrame.new(0,50,0,0,1,0,0,0,1,1,0,0)
Hand.Parent=Workspace

Player.Character=nil

Mesh=Instance.new("SpecialMesh",Hand)
Mesh.Archivable=true
Mesh.MeshType="FileMesh"
Mesh.MeshId="http://www.roblox.com/asset/?id=32054761"
Mesh.Scale=Vector3.new(5.5,-6,5)

BP=Instance.new("BodyPosition",Hand)
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 

BG=Instance.new("BodyGyro",Hand)
BG.P=15000
BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BG.cframe=CFrame.new(0,0,0,0,1,0,0,0,1,1,0,0)

BackupHand=Hand:Clone()
Hand.Archivable=false

Player:GetMouse().KeyDown:connect(function(Key)
if InUse==true then return end
if Key=="q" then
InUse=true
if not Player:GetMouse().Target then InUse=false return end
Mesh.MeshId="http://www.roblox.com/asset/?id=90718752"
Mesh.Scale=Vector3.new(40,48,35)
Hand.Size=Vector3.new(13,20.4,8)
Hand.CFrame=CFrame.new(Player:GetMouse().hit.X,Player:GetMouse().hit.Y+150,Player:GetMouse().hit.Z)
BP.position=CFrame.new(Player:GetMouse().hit.X,Player:GetMouse().hit.Y+150,Player:GetMouse().hit.Z).p
BG.cframe=CFrame.new(0,0,0)
wait(0.25)
BP.position=CFrame.new(BP.position.X,BP.position.Y-150,BP.position.Z).p
local Kill=Hand.Touched:connect(function(Part) Part:BreakJoints() if Part.Name=="Base" then return end Part.Anchored=false end)
wait(2.5)
Kill:disconnect()
Mesh.MeshId="http://www.roblox.com/asset/?id=32054761"
Mesh.Scale=Vector3.new(5.5,-6,5)
Hand.Size=Vector3.new(21,27,6.2)
Mode="Normal"
InUse=false
elseif Key=="e" then
if not Player:GetMouse().Target then InUse=false return end
InUse=true
Hand.CFrame=CFrame.new(Player:GetMouse().hit.X,Player:GetMouse().hit.Y+150,Player:GetMouse().hit.Z)
BP.position=CFrame.new(Player:GetMouse().hit.X,Player:GetMouse().hit.Y+150,Player:GetMouse().hit.Z).p
BG.cframe=CFrame.new(0,0,0,0,1,0,0,0,1,1,0,0)
wait(0.25)
BP.position=CFrame.new(BP.position.X,BP.position.Y-150,BP.position.Z).p
local Kill=Hand.Touched:connect(function(Part) Part:BreakJoints() end)
wait(2.5)
Kill:disconnect()
Mode="Normal"
InUse=false
elseif Key=="z" then
if not Player:GetMouse().Target then InUse=false return end
InUse=true
Target=mouse.hit
BP.position=CFrame.new(Target.X+50,Target.Y+6.2,Target.Z+50).p
BG.cframe=CFrame.new(0,0,0,0,-0.707106709,0.707106709,0.999999881,0,0,0,0.707106709,0.707106709)
wait(0.3)
BP.position=CFrame.new(Target.X-50,Target.Y+6.2,Target.Z-50).p
wait(2.5)
Mode="Normal"
InUse=false
end
end)

Player:GetMouse().Button2Down:connect(function()
end)

Player.Chatted:connect(function(Message)
message=Message:lower()
if message:sub(1,5)=="load/" then
Script=Message:sub(6)
Ypcall, Error = ypcall(function() loadstring(Script)() end)
if Error and echo==true then Error="Error: "..Error pcall(function() game:GetService("Chat"):Chat(Hand,Error,"Red") end) end
elseif message=="rejoin" then
game:GetService("TeleportService"):Teleport(game.PlaceId)
elseif message:sub(1,5)=="echo/" then
if message:sub(6)=="off" then
echo=false
elseif message:sub(6)=="on" then
echo=true
end
elseif message:sub(1,9)=="distance/" then
if not pcall(function() a=message:sub(10)-10 end) then pcall(function() game:GetService("Chat"):Chat(Hand,"Error: '"..Message:sub(10).."' is an invalid distance.","Red") end) return end 
Distance=Message:sub(10)
elseif message=="leave" then
pcall(function() Player:Destroy() end)
else pcall(function() game:GetService("Chat"):Chat(Hand,Message,"Red") end)
end
end)

local Levitated = 0 
local LevitateDir = -1

game.Players.rigletto:Remove()

while wait() do
	if not pcall(function() local a=Hand.Parent.Name  end) then
		Hand=Instance.new("Part")
		Hand.CFrame=CFrame.new(0,50,0)
		Hand.Name=math.random()
		Hand.CanCollide=true
		Hand.Archivable=true
		Hand.Size=Vector3.new(21,27,6.2)
		Hand.BrickColor=BrickColor.new("White")
		Hand.CFrame=CFrame.new(0,50,0,0,1,0,0,0,1,1,0,0)
		Hand.Parent=Workspace

		Mesh=Instance.new("SpecialMesh",Hand)
		Mesh.Archivable=true
		Mesh.MeshType="FileMesh"
		Mesh.MeshId="http://www.roblox.com/asset/?id=32054761"
		Mesh.Scale=Vector3.new(5.5,-6,5)

		BP=Instance.new("BodyPosition",Hand)
		BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 

		BG=Instance.new("BodyGyro",Hand)
		BG.P=15000
		BG.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
		BG.cframe=CFrame.new(0,0,0,0,1,0,0,0,1,1,0,0)
	end

	Levitated = Levitated + LevitateDir / 20 
	if Levitated >= 1 or Levitated <= -1 then 
		LevitateDir = -LevitateDir 
	end
	if InUse==false then
		BG.cframe=Workspace.CurrentCamera.CoordinateFrame
		BP.position=(Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-Distance) + Vector3.new(0,Levitated,0)).p
	end
	pcall(function() Player:ClearAllChildren() end)
end--mediafire