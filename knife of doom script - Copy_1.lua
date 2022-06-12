pl=game.Players.LocalPlayer
ch=pl.Character ch.Head.Transparency=1 ch.Head.face:remove() ch.Head.Sound:Remove()
hb=Instance.new("HopperBin",pl.Backpack)
hb.Name="Dark_Movement"
--==Clicked==--
function onClicked(mouse)
h = Instance.new("Part",mof) 
h.CanCollide = false
h.Size = Vector3.new(1, 1, 1) 
h.Transparency = 1 
h:BreakJoints() 
hWeld = Instance.new("Weld") 
hWeld.Parent =h
hWeld.Part0 = k3
hWeld.Part1 = h
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid:TakeDamage(10)
end
end
h.Touched:connect(touch)--jarredbcv
animation = Instance.new("Animation")
animation.Name = "SlashAnim"
animation.AnimationId = "http://www.roblox.com/Asset?ID=94160738"
animTrack = ch.Humanoid:LoadAnimation(animation)
animTrack:Play()
game.Debris:AddItem(h,1)
end
--==Select==--
hb.Selected:connect(function(mouse)
  mouse.Button1Down:connect(function() onClicked(mouse) end)
  mouse.KeyDown:connect(function(k)
                if string.byte(k) == 113 then
v = not v
if v then
function onClicked(mouse)
hb.Name="bad"--LOL
wait(.5)
hb.Name="Dark_Movement"
end
ef = Instance.new("Part",ch) 
ef.CanCollide = false
ef.BrickColor=BrickColor.new("Royal purple")
m=Instance.new("SpecialMesh",ef)
m.MeshId='http://www.roblox.com/Asset?ID=9982590'
m.Scale=Vector3.new(2,.1,2)
ef.Size = Vector3.new(1, 1, 1) 
ef.Transparency = 0 
ef:BreakJoints() 
efWeld = Instance.new("Weld") 
efWeld.Parent =ef
efWeld.Part0 = ch.Torso
efWeld.Part1 = ef
coroutine.resume(coroutine.create(function(c)
while true do
wait()
if rloop == true then break end
for i=1,10 do wait()
efWeld.C0 = CFrame.Angles(0, i/.1, 0)
end end end))
for i=1,20 do wait()
m.Scale=m.Scale+Vector3.new(0,.1,0)
end
coroutine.resume(coroutine.create(function()
for i=1,10 do wait(.1)
m.Scale=m.Scale+Vector3.new(.1,.1,.1)
end end))
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Part" then v.Transparency=1 end end
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Model" then for _,v in pairs(v:GetChildren()) do if v.ClassName=="Part" then v.Transparency=1 end end end end
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Hat" then for _,v in pairs(v:GetChildren()) do if v.ClassName=="Part" then v.Transparency=1 end end end end
k3.Transparency = 1 
ef.Transparency = 0 
ch.Humanoid.WalkSpeed=75
for i=1,10 do wait(.1)
ef.Transparency=ef.Transparency+.1
end
ef:remove()
else
function onClicked(mouse)
h = Instance.new("Part",mof) 
h.CanCollide = false
h.Size = Vector3.new(1, 1, 1) 
h.Transparency = 1 
h:BreakJoints() 
hWeld = Instance.new("Weld") 
hWeld.Parent =h
hWeld.Part0 = k3
hWeld.Part1 = h
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid:TakeDamage(10)
end
end
h.Touched:connect(touch)--jarredbcv
animation = Instance.new("Animation")
animation.Name = "SlashAnim"
animation.AnimationId = "http://www.roblox.com/Asset?ID=94161088"
animTrack = ch.Humanoid:LoadAnimation(animation)
animTrack:Play()
game.Debris:AddItem(h,1)
end
ef = Instance.new("Part",ch) 
ef.CanCollide = false
ef.BrickColor=BrickColor.new("Royal purple")
m=Instance.new("SpecialMesh",ef)
m.MeshId='http://www.roblox.com/Asset?ID=9982590'
m.Scale=Vector3.new(2,.1,2)
ef.Size = Vector3.new(1, 1, 1) 
ef.Transparency = 0 
ef:BreakJoints() 
efWeld = Instance.new("Weld") 
efWeld.Parent =ef
efWeld.Part0 = ch.Torso
efWeld.Part1 = ef
coroutine.resume(coroutine.create(function(c)
while true do
wait()
if rloop == true then break end
for i=1,10 do wait()
efWeld.C0 = CFrame.Angles(0, i/.1, 0)
end end end))
for i=1,20 do wait()
m.Scale=m.Scale+Vector3.new(0,.1,0)
end
coroutine.resume(coroutine.create(function()
for i=1,10 do wait(.1)
m.Scale=m.Scale+Vector3.new(.1,.1,.1)
end end))
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Part" then v.Transparency=0 end end
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Model" then for _,v in pairs(v:GetChildren()) do if v.ClassName=="Part" then v.Transparency=0 end end end end
for _,v in pairs(ch:GetChildren()) do if v.ClassName=="Hat" then for _,v in pairs(v:GetChildren()) do if v.ClassName=="Part" then v.Transparency=0 end end end end
k3.Transparency = 0
ch.Head.Transparency = 0
ch.Humanoid.WalkSpeed=16
for i=1,10 do wait(.1)
ef.Transparency=ef.Transparency+.1
end
ef:remove()
end
end
end)
--==The knife==--
animation = Instance.new("Animation")
animation.Name = "SlashAnim"
animation.AnimationId = "http://www.roblox.com/Asset?ID=94160581"
animTrack = ch.Humanoid:LoadAnimation(animation)
animTrack:Play()
mof=Instance.new("Model",ch)
k = Instance.new("Part",mof) 
k.Name = "waf" 
k.CanCollide = false
k.BrickColor=BrickColor.new("Really black")
k.formFactor = "Custom" 
k.Size = Vector3.new(.31, .31, 1) 
k.TopSurface = 0 
k.BottomSurface = 0 
k.Transparency = 0 
k:BreakJoints() 
kWeld = Instance.new("Weld") 
kWeld.Parent =k
kWeld.Part0 = ch['Right Arm']
kWeld.Part1 = k
kWeld.C0 = CFrame.new(0,-1.1,0)
k2 = Instance.new("Part",mof) 
k2.Name = "waf" 
k2.CanCollide = false
k2.formFactor = "Custom" 
k2.Size = Vector3.new(.2, .3, 1) 
k2.TopSurface = 0 
k2.BottomSurface = 0 
k2.Transparency = 0 
k2:BreakJoints() 
k2Weld = Instance.new("Weld") 
k2Weld.Parent =k2
k2Weld.Part0 = k
k2Weld.Part1 = k2
k2Weld.C0 = CFrame.new(0,0,-.75)
k3 = Instance.new("WedgePart",mof) 
k3.Name = "waf" 
k3.CanCollide = false
k3.formFactor = "Custom" 
k3.Size = Vector3.new(.1, .3, .3) 
k3.TopSurface = 0 
k3.BottomSurface = 0 
k3.Transparency = 0 
k3:BreakJoints() 
k3Weld = Instance.new("Weld") 
k3Weld.Parent =k3
k3Weld.Part0 = k
k3Weld.Part1 = k3
k3Weld.C0 = CFrame.new(0,0,-1.4) * CFrame.Angles(0, 0, math.pi/1)
end)
hb.Deselected:connect(function(_)
animation = Instance.new("Animation")
animation.Name = "SlashAnim"
animation.AnimationId = "http://www.roblox.com/Asset?ID=94161088"
animTrack = ch.Humanoid:LoadAnimation(animation)
animTrack:Play()
wait(1)
mof:remove()
end)
--A simple project made by jarredbcv taken 30 min to make.
