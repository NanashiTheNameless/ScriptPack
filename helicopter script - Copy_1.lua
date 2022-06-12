--[[Helicopter - Made 100% by EthanComputerMad - Prototype
THIS IS A LOCALSCRIPT
COMMANDS:
SAY EJECT TO EJECT YOUR PASSENGER
SAY LEAVE TO GET OUT
TO GET IN OR LET A PASSENGER IN APPROACH THE MIDDLE OF THE HELICOPTER
]]
wait(1)
speed = 1
turnspeed = math.pi / 90
vspeed = 1
isinheli = true
function loadheli()
p = Instance.new("Part", game.Workspace)
p.Name = game.Players.LocalPlayer.Name .. "Heli"
p.Anchored = true
p.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.X, game.Players.LocalPlayer.Character.Torso.CFrame.Y, game.Players.LocalPlayer.Character.Torso.CFrame.Z) + Vector3.new(0, 30, 0)
p.Size = Vector3.new(6, 2.4, 5)
m = Instance.new("SpecialMesh", p)
m.MeshType = Enum.MeshType.FileMesh
m.MeshId = "http://www.roblox.com/asset/?id=70264208"
m.Scale = Vector3.new(5, 5, 5)
m.TextureId = "http://www.roblox.com/asset/?id=70264191"
return p
end
pl = game.Players.LocalPlayer
cam = game.Workspace.CurrentCamera
mouse = pl:GetMouse()
pcall(function() game.Workspace[pl.Name .. "Heli"]:Destroy() end)
loadheli()
heli = game.Workspace[pl.Name .. "Heli"]
mf = false
mb = false
tl = false
tr = false
gu = false
gd = false
movement = coroutine.create(function(h) while true do wait() if isinheli == true then if mf == true then h.CFrame = h.CFrame * CFrame.new(0, 0, 0 - speed) end
if mb == true then h.CFrame = h.CFrame * CFrame.new(0, 0, speed) end
if tl == true then h.CFrame = h.CFrame * CFrame.Angles(0, turnspeed, 0) end
if tr == true then h.CFrame = h.CFrame * CFrame.Angles(0, 0 - turnspeed, 0) end
if gu == true then h.CFrame = h.CFrame + Vector3.new(0, vspeed, 0) end
if gd == true then h.CFrame = h.CFrame + Vector3.new(0, 0 - vspeed, 0) end
end
end
end)
coroutine.resume(movement, heli)
h = Instance.new("Hint", game.Workspace)
h.Text = ""
candosmoke = false
spos = nil
spos3 = nil
pcall(function() spos = game.Workspace.Base.CFrame spos3 = game.Workspace.Base.Position base = game.Workspace.Base candosmoke = true end)
if spos == nil then pcall(function() spos = game.Workspace["CLWorldFile - Really dont remove"].Base.CFrame spos3 = game.Workspace["CLWorldFile - Really dont remove"].Base.Position base = game.Workspace["CLWorldFile - Really dont remove"].Base candosmoke = true end) end
 
if candosmoke == false then else
smoke = coroutine.create(function(h, b)
for i= 1, 8 do p = Instance.new("Part", h) p.Anchored = true p.CanCollide = false p.Transparency = 1 p.Name = i .. "s" s = Instance.new("Smoke", p) s.Enabled = false s.RiseVelocity = 5 s.Opacity = 0.3 s.Color = Color3.new(153 / 255, 102 / 255, 51 / 255) s.Name = "S" end
while true do wait() for i= 1, 8 do h[i .. "s"].CFrame = CFrame.new(Vector3.new(h.Position.x, b.Position.y, h.Position.z)) * CFrame.Angles(math.pi / 2, 0, math.pi / 4 * (i - 1)) end
if h.Position.y < spos3.y + 15 then
for i= 1, 8 do wait() h[i .. "s"]:GetChildren()[1].Enabled = true end else
for i= 1, 8 do wait() h[i .. "s"]:GetChildren()[1].Enabled = false end end
end end)
coroutine.resume(smoke, heli, base)
end
mchar = coroutine.create(function(c)
while true do wait() if isinheli == true then pcall(function()
c.Torso.Anchored = true
c.Torso.CFrame = heli.CFrame * CFrame.new(0, -1.8, -8)
end) end end end)
coroutine.resume(mchar, pl.Character)
dawooh = coroutine.create(function()
while true do wait() if isinheli == true then else
mf = false
mb = false
tl = false
tr = false
gu = false
gd = false
ucs = false end end end)
coroutine.resume(dawooh)
cam.CameraSubject = heli
cam.CameraType = Enum.CameraType.Track
cam.FieldOfView = 80
mouse.KeyDown:connect(function(key)
k = string.byte(key)
if k == 17 then --[[Up arrow]]
mf = true
end
if k == 18 then --[[Down arrow]]
mb = true
end
if k == 20 then --[[Left arrow]]
tl = true
end
if k == 19 then --[[Right arrow]]
tr = true
end
if key == "w" then
gu = true
end
if key == "s" then
gd = true
end
end)
 
mouse.KeyUp:connect(function(key)
k = string.byte(key)
if k == 17 then --[[Up arrow]]
mf = false
end
if k == 18 then --[[Down arrow]]
mb = false
end
if k == 20 then --[[Left arrow]]
tl = false
end
if k == 19 then --[[Right arrow]]
tr = false
end
if key == "w" then
gu = false
end
if key == "s" then
gd = false
end
end)
occupied = false
ucs = false
heli.Touched:connect(function(c)
if c.Parent.Name == pl.Name then
isinheli = true
else
if occupied == false then else return end
if c.Parent:FindFirstChild("Humanoid") ~= nil then else return end
occupied = true
ucs = true
while ucs == true do wait()
pcall(function() c.Parent.Torso.Anchored = true c.Parent.Torso.CFrame = heli.CFrame end) end
pcall(function()
c.Parent.Torso.CFrame = c.Parent.Torso.CFrame * CFrame.Angles(0, math.pi / 2, 0)
c.Parent.Torso.CFrame = c.Parent.Torso.CFrame * CFrame.new(0, 0, 0 - 7)
c.Parent.Torso.Anchored = false
occupied = false
end)
end
end)
 
pl.Chatted:connect(function(msg)
lmsg = string.lower(msg)
if lmsg == "eject" then ucs = false end
if lmsg == "leave" then isinheli = false pl.Character.Torso.CFrame = pl.Character.Torso.CFrame * CFrame.Angles(0, math.pi / 2, 0) pl.Character.Torso.CFrame = pl.Character.Torso.CFrame * CFrame.new(0, 0, 0 - 5) pl.Character.Torso.Anchored = false
cam.CameraSubject = pl.Character.Head
cam.CameraType = Enum.CameraType.Track end
end)
