----(Sky's  Settings)----
local Player = game:getService("Players").LocalPlayer
local Players = game.Players
local Character = Player.Character
----(Variables)----
local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
pie = true

nums = Game.Players.LocalPlayer.Character.Head

    if pie ==true then
        if script.Parent.className ~= "HopperBin" then
        h = Instance.new("HopperBin")
        h.Parent = player.Backpack
        h.Name = "plane"
        script.Parent = h
        end
        
        sp = script.Parent
        
        hold = false
        miss = {}
        function selected(mouse, key)
                mouse.Button1Down:connect(function()
                        if hold == true then return end
                        hold = true
                        plane = Instance.new("Part",Game.Workspace)
                        plane.Parent = Game.Workspace
                        plane.formFactor = 0
                        plane.Size = Vector3.new(1,1,5)
                        plane.Anchored = true
                        plane.CFrame = CFrame.new(Player.Character.Torso.Position, mouse.Hit.p) * CFrame.new(0,0,-.8)

bill2 = Instance.new("BillboardGui", plane)
bill2.Size = UDim2.new(4, 4, 4, 4)
bill2.AlwaysOnTop = false
label2 = Instance.new("TextLabel", bill2)
label2.Size = UDim2.new(1,2,1,2)
label2.Position = UDim2.new(0, 0, -.65, 0)
label2.TextColor3 = Color3.new(0, 0, 0)
label2.TextStrokeTransparency = 0
label2.TextStrokeColor3 = Color3.new(255, 255, 255)
label2.BackgroundTransparency = 1
label2.Visible = true
label2.Font = 'SourceSansBold'
label2.FontSize = 'Size36'
label2.Text = "Plane(Scout)"
Player.Chatted:connect(function(msg)
label2.Text = msg
end)
                        
             mesh = Instance.new("FileMesh", plane)
            mesh.MeshId = "http://www.roblox.com/asset?id=113216991"
            mesh.TextureId = "http://www.roblox.com/asset?id=113216977"
            mesh.Scale = Vector3.new(4,4,4)
                        workspace.CurrentCamera.CameraSubject = plane
                        table.insert(miss,plane)
                        while hold == true do
                                wait()
                                plane.CFrame = CFrame.new(plane.Position, mouse.Hit.p)
                                plane.CFrame = plane.CFrame * CFrame.new(0,0,-.8)
                        end
                end)
                mouse.Button1Up:connect(function()
                end)
        end
        
        sp.Selected:connect(selected)

        end


--[[local vehseat = Instance.new('VehicleSeat',plane)
coroutine.resume(coroutine.create(function()
while wait() do
vehseat.CFrame = Workspace.plane.CFrame
vehseat.Anchored = true
end
end))]]



mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "f" then
                local ray = Ray.new(plane.CFrame.p, (mouse.Hit.p - plane.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRay(ray,char, false, true)
                local beam = Instance.new("Part", workspace)
                beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                beam.Transparency = 0
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
 
                local distance = (plane.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.2, 0.2, distance)
                beam.CFrame = CFrame.new(plane.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 
                game:GetService("Debris"):AddItem(beam, 0.3)
                if part then
                        local humanoid = part.Parent:FindFirstChild("Humanoid")
 
                        if not humanoid then
                                humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
                                 local new_sound = Instance.new('Sound',plane)
 new_sound.SoundId = "rbxassetid://180204650"
 new_sound.Parent = plane
   new_sound.Volume = 1
 new_sound:Play()
 new_sound:Stop()
                        end
 
                        if humanoid then
                         local new_sound = Instance.new('Sound',plane)
 new_sound.SoundId = "rbxassetid://180204650"
 new_sound.Parent = plane
   new_sound.Volume = 1
 new_sound:Play()
 new_sound:Stop()
                                humanoid:TakeDamage(30)
local GrenadeBLOCK = Instance.new('Part',workspace)
GrenadeBLOCK.CFrame = mouse.Hit
GrenadeBLOCK.Transparency = 1
local Grenade = Instance.new('Explosion',workspace)
Grenade.Position = GrenadeBLOCK.Position
Grenade.BlastRadius = 2
GrenadeBLOCK:Remove()


                        end
                end
wait(0.3)
                local ray = Ray.new(plane.CFrame.p, (mouse.Hit.p - plane.CFrame.p).unit * 300)
                local part, position = workspace:FindPartOnRay(ray,char, false, true)
                local beam = Instance.new("Part", workspace)
                beam.BrickColor = BrickColor.new("Bright red")
                beam.FormFactor = "Custom"
                beam.Material = "Neon"
                beam.Transparency = 0
                beam.Anchored = true
                beam.Locked = true
                beam.CanCollide = false
 
                local distance = (plane.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.2, 0.2, distance)
                beam.CFrame = CFrame.new(plane.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 
                game:GetService("Debris"):AddItem(beam, 0.3)
                if part then
                        local humanoid = part.Parent:FindFirstChild("Humanoid")
 
                        if not humanoid then
                                humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
                                 local new_sound = Instance.new('Sound',plane)
 new_sound.SoundId = "rbxassetid://180204650"
 new_sound.Parent = plane
 new_sound.Looped=true
   new_sound.Volume = 1
 new_sound:Play()
 new_sound:Stop()
                        end
 
                        if humanoid then
                         local new_sound = Instance.new('Sound',plane)
 new_sound.SoundId = "rbxassetid://180204650"
 new_sound.Parent = plane
 new_sound.Looped=true
  new_sound.Volume = 1
 new_sound:Play()
 new_sound:Stop()
                                humanoid:TakeDamage(30)
local GrenadeBLOCK = Instance.new('Part',workspace)
GrenadeBLOCK.CFrame = mouse.Hit
GrenadeBLOCK.Transparency = 1
local Grenade = Instance.new('Explosion',workspace)
Grenade.Position = GrenadeBLOCK.Position
Grenade.BlastRadius = 2
GrenadeBLOCK:Remove()


                        end
                end
                
        end
end)


mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "r" then
local new_sound = Instance.new('Sound',plane)
 new_sound.SoundId = "rbxassetid://152400962"
 new_sound:Play()
 new_sound.Volume = .4
     end
end)






mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "e" then

local gui = Instance.new("BillboardGui", nums)
gui.Parent=nums
gui.AlwaysOnTop = true
gui.Adornee=nums
gui.Size=UDim2.new(3,0,3,0)
gui.StudsOffset=Vector3.new(0.4,-.5,0)
text=Instance.new("ImageLabel")
text.Image = "http://www.roblox.com/asset/?id=142406345" 
text.Size=UDim2.new(1,0,1,0)
text.Position=UDim2.new(-0.125,0,-0.25,0)
text.BackgroundTransparency = 1
text.Parent=gui

game:GetService('Players').PlayerAdded:connect(function(player)
	player.CharacterAdded:connect(function(character)
		character:WaitForChild("Humanoid").Died:connect(function()
			pcall(function() game:service("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[Plane] Target: Destoyed"}) end)
		end)
	end)
end)
    end
end)

game:GetService('Players').PlayerAdded:connect(function(player)
	player.CharacterAdded:connect(function(character)
		character:WaitForChild("Humanoid").Died:connect(function()
			pcall(function() game:service("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[Plane] Target: Destoyed"}) end)
		end)
	end)
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "l" then
            hold = false
           workspace.CurrentCamera.CameraSubject = char.Humanoid
          plane:Destroy()
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "w" then
function Loop1()
     while true and wait() do
 plane.CFrame = plane.CFrame * CFrame.new(0,0,-.8)
     end
end
my_first_coroutine = coroutine.create(Loop1)
coroutine.resume(my_first_coroutine)

function Loop2()
     while true and wait() do
 plane.CFrame = plane.CFrame * CFrame.new(0,0,-.8)
     end
end
    end
end)



mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "s" then
function Loop1()
     while true and wait() do
 plane.CFrame = plane.CFrame * CFrame.new(0,0,.4)
     end
end
my_first_coroutine = coroutine.create(Loop1)
coroutine.resume(my_first_coroutine)

function Loop2()
     while true and wait() do
 plane.CFrame = plane.CFrame * CFrame.new(0,0,.4)
     end
end
    end
end)


--Partical gun

local new=Instance.new
local rad=math.rad
local cf=CFrame.new
local v3=Vector3.new
local ang=function(x,y,z)
return CFrame.Angles(rad(x),rad(y),rad(z))
end
local player=game:service'Players'.LocalPlayer
local char=player.Character
local cam=workspace.Camera
local mouse=player:GetMouse()
local weld=function(a,b,c0,c1)
m=Instance.new('Motor',a)
m.Part0=a
m.Part1=b
m.C0=c0
m.C1=c1
return m
end
 
snd='rbxassetid://--247600043'
beamm=Instance.new('Model',workspace)
beamm.Name='beam'
 
laser=false
 
rs=Instance.new('Part',char)
rs.Transparency=1
rs.CanCollide=false
rs.TopSurface,rs.BottomSurface=0,0
rs.FormFactor=3
rs.Size=Vector3.new(.5,.5,.5)
 
ls=rs:Clone()
ls.Parent=char
 
rsw=weld(rs,char.Torso,cf(-1,-.5,0),cf())
lsw=weld(ls,char.Torso,cf(1,-.5,0),cf())
raw=weld(char['Right Arm'],rs,cf(-.5,.6,-.14),ang(90,0,-8))
law=weld(char['Left Arm'],ls,cf(-.3,1.5,-.14),ang(90,0,43))
 
s1=Instance.new('Sound',char)
s1.Volume=1
s1.Pitch=1.2
s1.Looped=true
s1.SoundId=snd
 
particles={}
 
local wep=new('Part',char)
wep.FormFactor=3
wep.CanCollide=false
wep.Size=v3(1,3,1)
wep.TopSurface,wep.BottomSurface=0,0
wep.Transparency=1
local wepw=weld(wep,char['Right Arm'],cf(.26,.4,.7),ang(0,0,8))
 
local beam=wep:Clone()
beam:ClearAllChildren()
beam.Material='Neon'
beam.BrickColor=BrickColor.new('Really red')
beam.Size=Vector3.new(3,3,1)
beam.Transparency=.5
beam.Anchored=true
local ms=Instance.new('BlockMesh',beam)
local inner=beam:Clone()
inner.Transparency=0
inner.Material='SmoothPlastic'
inner.BrickColor=BrickColor.new('Really black')
local ms2=inner.Mesh
 
local expl=inner:Clone()
expl.Mesh:Destroy()
expl.Material='Neon'
expl.BrickColor=BrickColor.new('Really red')
expl.Size=Vector3.new(11,11,11)
expl.Transparency=.55
pl=Instance.new('PointLight',expl)
pl.Color=expl.BrickColor.Color
pl.Range=pl.Range*2
pl.Name='light'
local br=pl.Range
 
local exa=expl:Clone()
exa.Size=Vector3.new(.4,.4,.4)
pl2=exa.light
 
local part=exa:Clone()
part.Size=Vector3.new(1.5,1.5,1.5)
pl3=part.light
pms=Instance.new('BlockMesh',part)
 
char.Humanoid.Died:connect(function()
laser=false
beam.Parent=nil
inner.Parent=nil
expl.Parent=nil
exa.Parent=nil
s1:stop()
end)
 
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "g" then
laser=true
s1.Volume=1
s1:play()
end end)
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "k" then
laser=false
beam.Parent=nil
inner.Parent=nil
expl.Parent=nil
exa.Parent=nil
s1:stop()
end end)
 
parti=0
game:service'RunService'.Stepped:connect(function()
parti=parti+1
for i,v in pairs(particles) do
v.CFrame=v.CFrame*CFrame.new(0,0,-.1)
v.Transparency=1
v.BrickColor=BrickColor.new(Color3.new(math.random(),math.random(),math.random()))
if v.Transparency >= 1 then
v:Destroy()
table.remove(particles,i)
else
v.Parent=beamm
end
end
a=cam.CoordinateFrame.p
b=mouse.Hit.p
mhitr=Ray.new(a,(b-a).unit*999)
mhit,ps=workspace:FindPartOnRayWithIgnoreList(mhitr,{char,beamm})
raw.C1=ang(90+(mouse.Hit.lookVector.y*90),0,-8)

if not char.Humanoid.Sit and not char.Humanoid.PlatformStand then
char.Torso.CFrame=CFrame.new(char.Torso.CFrame.p,Vector3.new(ps.x,char.Torso.CFrame.p.y,ps.z))
end
if laser then
beamm.Parent=workspace
beam.Parent=beamm
inner.Parent=beamm
expl.Parent=beamm
exa.Parent=beamm
 
ray=Ray.new((plane.CFrame*cf(0,-1.5,0)).p,((plane.CFrame*cf(0,-10,0)).p-(plane.CFrame*cf(0,-1.5,0)).p).unit*999)
hit,pos=workspace:FindPartOnRayWithIgnoreList(ray,{char,beamm})
 
if hit and hit.Parent:findFirstChild('Humanoid') and s1.Volume > .3 and parti/8==math.floor(parti/8) then
Instance.new('Explosion',workspace).Position=pos
end
if hit and hit.Parent==workspace.Terrain or hit==workspace.Terrain and parti/8==math.floor(parti/8) then
e=Instance.new('Explosion',workspace)
e.Position=pos
e.BlastRadius=14
e.BlastPressure=1e4
end
if hit and not hit.Anchored and not (hit:GetMass()>1e4) then
hit.Velocity=hit.Velocity+beam.CFrame.lookVector*(1*s1.Volume*hit:GetMass())
end
 
if parti==math.floor(parti) then
par=part:Clone()
table.insert(particles,par)
par.Parent=beamm
par.Transparency=11111
par.CFrame=cf(pos)*ang(math.random(-180,180),math.random(-180,180),math.random(-180,180))*cf(0,0,-10)
end
 
mag=((plane.CFrame*cf(0,-1.5,0)).p-pos).magnitude
ms.Scale=v3(s1.Volume,s1.Volume,mag)
ms2.Scale=v3(ms.Scale.x/2,ms.Scale.y/2,mag-(.1/mag))
beam.CFrame=cf((plane.CFrame*cf(0,-1.5,0)).p,pos)*cf(0,0,-mag/2)*ang(0,0,math.random(0,180))
inner.CFrame=beam.CFrame
expl.Size=v3(math.random(9,13),math.random(9,13),math.random(9,13))*s1.Volume
expl.Transparency=.2
expl.CFrame=cf(pos)*ang(math.random(0,180),math.random(0,180),math.random(0,180))
exa.Size=v3(.4,.4,.4)*s1.Volume
exa.CFrame=plane.CFrame*cf(0,-1.5,0)*ang(math.random(0,180),math.random(0,180),math.random(0,180))
end
end)





bill2 = Instance.new("BillboardGui", nums)
bill2.Size = UDim2.new(4, 4, 4, 4)
bill2.AlwaysOnTop = false
label = Instance.new("TextLabel", bill2)
label.Size = UDim2.new(1,2,1,2)
label.Position = UDim2.new(0, 0, -.65, 0)
label.TextColor3 = Color3.new(255, 0, 255)
label.TextStrokeTransparency = 0
label.TextStrokeColor3 = Color3.new(255, 255, 255)
label.BackgroundTransparency = 1
label.Visible = true
label.Font = 'SourceSansBold'
label.FontSize = 'Size36'
label.Text = "Target"