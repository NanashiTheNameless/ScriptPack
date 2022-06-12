me=game.Players.LocalPlayer
name = me.Name
m = me:GetMouse()
me.Character.archivable = true
xd = me.Character:clone()
xd.Parent=workspace
xd.Name = name
test=false
me.Character.Parent=nil
last_positionX = '0,0,0'
last_positionY = '0,0,0'
last_positionZ = '0,0,0'
speed = 1
readd=true

w=false
w1=false
a=false
a1=false
s=false
s1=false
d=false
d1=false
e=false
q=false

game:GetService("RunService").RenderStepped:connect(function()
		if w == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(0,0,-speed)
		last_positionX = xd.Torso.CFrame.X
		last_positionY = xd.Torso.CFrame.Y
		last_positionZ = xd.Torso.CFrame.Z
		end
		
		if a == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(-speed,0,0)
		last_positionX = xd.Torso.CFrame.X
		last_positionY = xd.Torso.CFrame.Y
		last_positionZ = xd.Torso.CFrame.Z
end
	
		if s == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(0,0,speed)
		last_positionX = xd.Torso.Position.X
		last_positionY = xd.Torso.Position.Y
		last_positionZ = xd.Torso.Position.Z
		end
		
		if d == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(speed,0,0)
		last_positionX = xd.Torso.Position.X
		last_positionY = xd.Torso.Position.Y
		last_positionZ = xd.Torso.Position.Z
		end
		
		if e == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(0,speed,0)
		last_positionX = xd.Torso.Position.X
		last_positionY = xd.Torso.Position.Y
		last_positionZ = xd.Torso.Position.Z
		end
		
		if q == true then
		xd.Torso.Anchored = true
		xd.Torso.CFrame=xd.Torso.CFrame*CFrame.new(0,-speed,0)
		last_positionX = xd.Torso.Position.X
		last_positionY = xd.Torso.Position.Y
		last_positionZ = xd.Torso.Position.Z
		end
end)

function Reload()
	if readd == true then
	xd = me.Character:clone()
	xd.Name = name
	xd.Parent=workspace
	
	workspace.CurrentCamera.CameraSubject = xd.Head
	workspace.CurrentCamera.CameraType = "Follow"
	xd.Torso.CFrame = CFrame.new(last_positionX,last_positionY,last_positionZ)
	
	m.Button1Down:connect(function()
if m.Hit == nil then return end
if m.Hit.p == nil then return end
if m.Target == nil then return end
if m.Target.Parent == nil then return end
local Hit = m.Hit.p
local Target = m.Target
if ((((Hit) - (xd:findFirstChild("Torso").Position)).magnitude)<=50) then
xd:findFirstChild("Humanoid"):MoveTo(Hit,Target)
end
	end)
end
end
game:GetService("RunService").RenderStepped:connect(function()
	if not workspace:FindFirstChild(name) then
		Reload()
	end

xd.Humanoid.Died:connect(function()
	for i = 1,#workspace:children(),1 do
for i,v in pairs(workspace:children()) do
if v.Name~='Base' and v.ClassName~='Terrain' and v.ClassName~='Camera' then
if not game.Players:FindFirstChild(v.Name) then
v:Remove()
end
end
end
end
Reload()
end)
end)

ChatColor = "Red" Player = game.Players.LocalPlayer Player.Chatted:connect(function(Message)  
if Message:lower():sub(1,#'view/')=='view/' then
	for i,v in pairs(game.Players:children()) do if string.find(v.Name:lower(),Message:lower():sub(#'view/'+1)) then
		xd=v.Character
		workspace.CurrentCamera.CameraSubject = xd.Head
	end
	end
end

if Message:lower() == 'reset/' then
for i = 1,#workspace:children(),1 do
for i,v in pairs(workspace:children()) do
if v.Name~='Base' and v.ClassName~='Terrain' and v.ClassName~='Camera' then
if not game.Players:FindFirstChild(v.Name) then
v:Remove()
end
end
end
end
Reload()
readd=true
xd.Torso.CFrame=CFrame.new(0,3,0)
end

if Message:lower():sub(1,#'kick/')=='kick/' then
	for i,v in pairs(game.Players:children()) do if string.find(v.Name:lower(),Message:lower():sub(#'kick/'+1)) then
        v:remove()
	end
	end
end
 
if Message:lower():sub(1,#'kill/')=='kill/' then
	for i,v in pairs(game.Players:children()) do if string.find(v.Name:lower(),Message:lower():sub(#'kick/'+1)) then
        v.Character:BreakJoints()
	end
	end
end

if Message:lower():sub(1,#'ff/')=='ff/' then
	for i,v in pairs(game.Players:children()) do if string.find(v.Name:lower(),Message:lower():sub(#'ff/'+1)) then
        Instance.new('ForceField',v.Character)
	end
	end
end

if Message:lower():sub(1,#'readd/true')=='readd/true' then
readd=true

workspace.CurrentCamera.CameraSubject = xd.Head
workspace.CurrentCamera.CameraType = "Follow"
end

if Message:lower():sub(1,#'readd/false')=='readd/false' then
readd=false
end

if Message:lower():sub(1,#'clean/')=='clean/' then
for i = 1,#workspace:children(),1 do
for i,v in pairs(workspace:children()) do
if v.Name~='Base' and v.ClassName~='Terrain' and v.ClassName~='Camera' then
if not game.Players:FindFirstChild(v.Name) then
v:Remove()
end
end
end
end
end

if Message:lower():sub(1,#'unff/')=='unff/' then
	for i,v in pairs(game.Players:children()) do if string.find(v.Name:lower(),Message:lower():sub(#'unff/'+1)) then
       for i,x in pairs(v.Character:children()) do if x.ClassName=='ForceField' then
	x:remove()
	end
	end
	end
	end
	
	if Message:lower():sub(1,#'speed/')=='speed/' then
	speed=Message:sub(#'speed/'+1)
	end
	
	if Message:lower():sub(1,#'name/')=='name/' then
	name=Message:sub(#'name/'+1)
	xd.Name=name
end

if Message:lower():sub(1,#'mus/')=='mus/' then
	for i,v in pairs(xd:children()) do if v.ClassName=='Sound' then
		v:remove()
		end
	end
	sound=Instance.new('Sound',xd)
	sound.SoundId='rbxassetid://'..Message:sub(#'mus/'+1)
	sound.Looped = true
	sound:Play()
	sound.Volume=555555555555555555555555555555555
end
end


game:GetService("Chat"):Chat(xd.Head,Message,ChatColor) end)

	m.Button1Down:connect(function()
if m.Hit == nil then return end
if m.Hit.p == nil then return end
if m.Target == nil then return end
if m.Target.Parent == nil then return end
local Hit = m.Hit.p
local Target = m.Target
if ((((Hit) - (xd:findFirstChild("Torso").Position)).magnitude)<=50) then
xd:findFirstChild("Humanoid"):MoveTo(Hit,Target)
end
	end)

mouse=me:GetMouse()
mouse.KeyDown:connect(function(key)
key:lower()
if key == "w" then
w=true
end

if key == "a" then
a=true
end

if key == "s" then
s=true
end

if key == "d" then
d=true
end

if key == "e" then
e=true
end

if key == "q" then
q=true
end

if key == "r" then
xd.Torso.CFrame=xd.Torso.CFrame*CFrame.Angles(0,xd.Torso.Size.Z,0)
end
end)

mouse=me:GetMouse()
mouse.KeyUp:connect(function(key)
key:lower()
if key == "w" then
w=false
xd.Torso.Anchored=false
end

if key == "a" then
a=false
xd.Torso.Anchored=false
end

if key == "s" then
s=false
xd.Torso.Anchored=false
end

if key == "d" then
d=false
xd.Torso.Anchored=false
end

if key == "e" then
e=false
xd.Torso.Anchored=false
end

if key == "q" then
q=false
xd.Torso.Anchored=false
end
end)

workspace.CurrentCamera.CameraType = "Follow"
workspace.CurrentCamera.CameraSubject = xd.Head

if test == false then
game.Players.LocalPlayer.Parent=nil
end