--[[
love u iFractal
<3
leeked by CLarramore
]]

-- made by a new user (iFractal) leaked by a logger with love
--One Punch Man Script 
p = game.Players.LocalPlayer
char = p.Character
des = false
fling = true
dot = false
falling = false
jump = true
--char.Shirt:Remove()
--for i,v in pairs(char:GetChildren()) do if v:IsA("Pants") then v:Remove() end end
for i,v in pairs(char:GetChildren()) do if v:IsA("Hat") then v.Handle:Remove() end end
wait()--shirt = Instance.new("Shirt", char)
--shirt.Name = "Shirt"
--pants = Instance.new("Pants", char)
--pants.Name = "Pants"

--char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=451927425"
--char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
tp = true
shoot = true
hum = char.Humanoid
punch = true
neckp = char.Torso.Neck.C0
neck = char.Torso.Neck
hum.MaxHealth = 999999999
wait()
hum.Health =hum.MaxHealth
des = false
root=char.HumanoidRootPart
torso = char.Torso
char.Head.face.Texture = "rbxassetid://332768867"
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(255,0,0)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
function newRay(start,face,range,wat)
       local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
       hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
       return rey,hit,pos
end
aa1={}
torso=game.Players.LocalPlayer.Character.Torso

local WorldUp = Vector3.new(0,1,0)
function look2(Vec1,Vec2)
   local Orig = Vec1
   Vec1 = Vec1+Vector3.new(0,1,0)
   Vec2 = Vec2+Vector3.new(0,1,0)
   local Forward = (Vec2-Vec1).unit
   local Up = (WorldUp-WorldUp:Dot(Forward)*Forward).unit
   local Right = Up:Cross(Forward).unit
   Forward = -Forward
   Right = -Right
   return CFrame.new(Orig.X,Orig.Y,Orig.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function look(CFr,Vec2)
   local A = Vector3.new(0,0,0)
   local B = CFr:inverse()*Vec2
   local CF = look2(A,Vector3.new(A.X,B.Y,B.Z))
   if B.Z > 0 then
       CF = CFr*(CF*CFrame.Angles(0,0,math.pi))
   elseif B.Z == 0 then
       if B.Y > 0 then
           CF = CFr*CFrame.Angles(math.pi/2,0,0)
       elseif B.Y < 0 then
           CF = CFr*CFrame.Angles(-math.pi/2,0,0)
       else
           CF = CFr
       end
   end
   local _,_,_,_,X,_,_,Y,_,_,Z,_ = CF:components()
   local Up = Vector3.new(X,Y,Z)
   local Forward = (Vec2-CFr.p).unit
   local Right = Up:Cross(Forward)
   Forward = -Forward
   Right = -Right
   return CFrame.new(CFr.X,CFr.Y,CFr.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function simulate(j,d,m,r,t)
       local joint = j
       for i,v in ipairs(t) do
               if v[1]:FindFirstChild("Weld") then
                       local stiff = m.CFrame.lookVector*0.03
                       if i > 1 then joint = t[i-1][1].CFrame*CFrame.new(0,0,d*.5) end
                       local dir = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).unit
                       local dis = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).magnitude
                       local pos = joint.p+(dir*(d*0.5))
                     --if v[1].CFrame.y<=workspace.Base.CFrame.y then pos = joint.p+(dir*(d*.5)) end
                       local inv = v[1].Weld.Part0.CFrame
                       local rel1 = inv:inverse()*pos
                       local rel2 = inv:inverse()*(pos-(dir*dis))
                       local cf = look(CFrame.new(rel1),rel2)--CFrame.new(pos,pos-(dir*dis))*CFrame.fromEulerAnglesXYZ(r.x,r.y,r.z)
                       v[1].Weld.C0 = cf
                       v[2] = inv*cf
                       --v[1].CFrame = cf
               end
       end
end
for i=1,8 do
local p = Instance.new("Part",char)
p.Anchored = false
p.BrickColor = BrickColor.new("Institutional white")
p.CanCollide = false
p.FormFactor="Custom"
p.Material = "SmoothPlastic"
p.TopSurface = "SmoothNoOutlines"
p.BottomSurface = "SmoothNoOutlines"
p.RightSurface = "SmoothNoOutlines"
p.LeftSurface = "SmoothNoOutlines"
p.FrontSurface = "SmoothNoOutlines"
p.BackSurface = "SmoothNoOutlines"

p.Size=Vector3.new(2,.2,0.2)
p:BreakJoints() -- sometimes the parts are stuck to something so you have to breakjoints them
mesh = Instance.new("BlockMesh",p)
mesh.Scale = Vector3.new(1,1,4)
local w = Instance.new("Motor6D",p)
w.Part0 = aa1[i-1] and aa1[i-1][1] or torso
w.Part1 = p
w.Name = "Weld"
--table.insert(aa1,p)
aa1[i] = {p,p.CFrame}

end
game:service"RunService".Stepped:connect(function()
simulate(torso.CFrame*CFrame.new(0,0.9,.5),.6,torso,Vector3.new(),aa1)
end)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "* "
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(255,255,255)
gui.BackgroundColor3=Color3.new(0,0,0)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,0)
punch2 = true
gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)

gui1.TextColor3 = Color3.new(255,255,255)
gui1.BackgroundColor3=Color3.new(255,255,255)
jump2 = true
gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://447301252"
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
soka = Instance.new("Sound",char)
soka.SoundId = "http://www.roblox.com/asset/?id = 447199232"
soka.Volume = 1
boom = Instance.new("Sound",char)
boom.SoundId = "http://www.roblox.com/asset/?id = 447041606"
boom.Volume = 1
boom2 = Instance.new("Sound",char)
boom2.SoundId = "http://www.roblox.com/asset/?id = 449025737"
boom2.Volume = 1
boom3 = Instance.new("Sound",char)
boom3.SoundId = "http://www.roblox.com/asset/?id = 450719019"
boom3.Volume = 1
tps = Instance.new("Sound",char)
tps.SoundId = "http://www.roblox.com/asset/?id = 449860746"
tps.Volume = 1
asd = Instance.new("Sound",char)
asd.SoundId = "http://www.roblox.com/asset/?id = 447310433"
asd.Volume =1 
asd1 = Instance.new("Sound",char)
asd1.SoundId = "http://www.roblox.com/asset/?id = 358280695"

asd2 = Instance.new("Sound",char)
asd2.SoundId = "http://www.roblox.com/asset/?id = 386713054"
asd2.Looped = true
asd2.Volume = 5
asd3 = Instance.new("Sound",char)
asd3.SoundId = "http://www.roblox.com/asset/?id = 378387996"
asd3.Looped = true
asd4 = Instance.new("Sound",char)
asd4.SoundId = "http://www.roblox.com/asset/?id = 401258325"
asd4.Looped = true
asd5 = Instance.new("Sound",char)
asd5.SoundId = "http://www.roblox.com/asset/?id = 362252261"
asd5.Looped = true
gas = Instance.new("Sound",char)
gas.SoundId = "http://www.roblox.com/asset/?id = 345052019"
asd6 = Instance.new("Sound",char)
asd6.SoundId = "http://www.roblox.com/asset/?id = 401258325"
asd6.Looped = true
function play(play)
asd:Play()
wait(0.05)
--asd1:Play()
end



------------
-------------------------

function stream(origin,dir,length,size)
       local parts = {}
       for i = 1,length do
               local p = Instance.new("Part",char)
               p.Anchored = true
               p.Transparency = 0.5
               p.TopSurface = 0
               p.BottomSurface = 0
               p.CanCollide = false
               p.BrickColor = BrickColor.new("Institutional white")
               p.Size = Vector3.new(10,30,10) -- for now
               p.CFrame = CFrame.new(origin+dir*i*size)*CFrame.Angles(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
               parts[i] = {p,CFrame.Angles(math.random()*math.pi/5,math.random()*math.pi/5,math.random()*math.pi/5)}
               game:GetService("Debris"):AddItem(p,3)
       end
       Spawn(function()
               while parts do
                       for i,v in pairs(parts) do
                               if v[1].Parent == char then
                                       v[1].CFrame = v[1].CFrame*v[2]
                               else
                                       parts = nil
                                       break
                               end
                       end
                       wait(0.02)
               end
       end)
end

--[[-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = ""
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
gui.Text = ""
for i = 1,string.len(message) do 
gui.Text =gui.Text..message:sub(i,i)
play()

end
end


des = true
end)]]--
m.KeyDown:connect(function(k)
if k == "g" then
asd2:Play()


end
end)

m.KeyDown:connect(function(k)
if k == "r" then

asd4:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "q" then

asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "z" then
img.Image = "rbxassetid://332766052"

end
end)
m.KeyDown:connect(function(k)
if k == "c" then
img.Image = "rbxassetid://447301252"

end
end)
m.KeyDown:connect(function(k)
if k == "b" then

asd6:Play()
end
end)
mouse = p:GetMouse()
m.KeyDown:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 100
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 50 then

soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 52 then

char.Head.face.Texture = "rbxassetid://444037452"
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 51 then

char.Head.face.Texture = "rbxassetid://332768867"
end
end)
m.KeyUp:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 16
end
end)
p.Chatted:connect(function(m)
if m == "Okay." then
soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = "* "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(key)
if key == "j" then
if tp == true then
tp = false
tps:Play()
char.Head.face.Parent = game.Lighting
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 1
end

end
  wait(0.5)
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 0          
end

end
char.HumanoidRootPart.CFrame = mouse.Hit * CFrame.new(0, 3, 0)
char.HumanoidRootPart.Transparency =  1
game.Lighting.face.Parent = char.Head
   wait(0.2)

tp = true


end
end
end)


m.KeyDown:connect(function(key)
   if key == "t" then
if punch2 == true then
punch2 = false
punch = false

local ChatService = game:GetService("Chat")

neck.C0 = neck.C0 * CFrame.Angles(0.3,0,0)
ChatService:Chat(char.Head, "Mind if I get Serious?")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head ,"Killer Move: Serious Series...")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head, "SERIOUS PUNCH.")
neck.C0 = neckp
wait(0.6)
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
wait()
killbrick2 = Instance.new("Part",char)
killbrick2.Size = Vector3.new(80,80,9000)
killbrick2.Transparency = 1

killbrick2.CanCollide = true
wait(0.1)
killbrick2.CanCollide = false

killbrick2.Anchored = true

killbrick2.CFrame = char.Torso.CFrame * CFrame.new(0,0,-1005)

killbrick2.Touched:connect(function(h)
local x = h.Parent:FindFirstChild("Humanoid")
if x then
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then
if safe == false then
h.Parent.Torso.Velocity = CFrame.new(char.Torso.Position,h.Parent.Torso.Position).lookVector * 900
local bodyforc = Instance.new("BodyForce", h.Parent.Torso)
boom:Play()
bodyforc.force = Vector3.new(0, h.Parent.Torso:GetMass() * 196.1, 0)


wait(0.2)
x.Parent:BreakJoints()
wait()
safe = true
end
end
end
end)








 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.8
    rng.TopSurface = 0
    rng.BottomSurface = 0
rng.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
local rng1 = Instance.new("Part", char)
       rng1.Anchored = true
   rng1.BrickColor = BrickColor.new("Institutional white")
       rng1.CanCollide = false
   rng1.FormFactor = 3
       rng1.Name = "Ring"
    rng1.Size = Vector3.new(1, 1, 1)
       rng1.Transparency = 0.8
    rng1.TopSurface = 0
    rng1.BottomSurface = 0
rng1.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng1.CFrame = rng1.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm1 = Instance.new("SpecialMesh", rng1)
    rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm1.Scale = Vector3.new(1, 1.3, 2)
       
       local p = (torso.CFrame*CFrame.new(-20,0,3))
       stream(p.p,((p*Vector3.new(-0.7,0,1))-p.p).unit,90,5) -- 20 is number of parts, 6 is distance between each one
       local p = (torso.CFrame*CFrame.new(20,0,3))
       stream(p.p,((p*Vector3.new(0.7,0,1))-p.p).unit,90,5) -- same here

local rng2 = Instance.new("Part", char)
       rng2.Anchored = true
   rng2.BrickColor = BrickColor.new("Institutional white")
       rng2.CanCollide = false
   rng2.FormFactor = 3
       rng2.Name = "Ring"
    rng2.Size = Vector3.new(1, 1, 1)
       rng2.Transparency = 0.8
    rng2.TopSurface = 0
    rng2.BottomSurface = 0
rng2.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng2.CFrame = rng2.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm2 = Instance.new("SpecialMesh", rng2)
    rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm2.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
          
boom3:Play()
    coroutine.wrap(function()
     for i = 1, 35, 0.5 do





       rngm.Scale = Vector3.new(50 + i*2, 10 + i*2, 2.5+ i*4)
rngm1.Scale = Vector3.new(50 + i*2, 1.4 + i*2, 1.4+ i*4)
rngm2.Scale = Vector3.new(50 + i*2, 10 + i*2, 1.2+ i*4)
   
         wait()
           end
             wait()
           rng:Destroy()
rng1:Destroy()
rng2:Destroy()
             killbrick2:Remove()
      wait(0.5)
char.Torso["Left Shoulder"].C0 = org
   wait(1)
punch2 = true
punch = true
wait()


end)()



end


wait(.1)


end
end)





m.KeyDown:connect(function(key)
   if key == "k" then
if punch == true then
punch = false
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
killbrick = Instance.new("Part",char)
killbrick.Size = Vector3.new(5,1,5)
killbrick.Transparency = 1
killbrick:BreakJoints()
killbrick.CanCollide = false
local wel = Instance.new("Weld",killbrick)
wel.Part0 = killbrick
wel.Part1 = char["Left Arm"]
wel.C0 = CFrame.new(0,1,0)
force = 90

killbrick.Touched:connect(function(h)
local x = h.Parent.Humanoid
if x.Health >= 6000 then
       fling = false
end
if x.Health < 6000 then
       fling = true
end
local stop = h.Parent.Torso.Velocity
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then
if safe == false then
       if fling == true then
               force = 900
       
       end
if fling == false then
       force = 200
end
       
    
h.Parent.Torso.Velocity = CFrame.new(char.Torso.Position,h.Parent.Torso.Position).lookVector * force
local bodyforc = Instance.new("BodyForce", h.Parent.Torso)
boom:Play()
bodyforc.force = Vector3.new(0, h.Parent.Torso:GetMass() * 196.1, 0)


wait(0.2)
x:TakeDamage(5000)
wait()
safe = true
bodyforc:Remove()
h.Parent.Torso.Velocity = stop

end
end
end)










 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.8
    rng.TopSurface = 0
    rng.BottomSurface = 0
rng.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
          
boom2:Play()
    coroutine.wrap(function()
     for i = 1, 10, .4 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
   
         wait()
           end
             wait()
           rng:Destroy()
             killbrick:Remove()
      wait(0.5)
char.Torso["Left Shoulder"].C0 = org
   wait(1)

punch = true
wait()
end)()



end


wait(.1)


end
end)














m.KeyDown:connect(function(key)
   if key == "m" then
if jump == true then
jump = false


 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.35
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.Position = torso.Position - Vector3.new(0,2,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
            BV = Instance.new("BodyVelocity", torso)
    BV.maxForce = Vector3.new(0,20000,0)
      BV.P = 1000
    BV.velocity = Vector3.new(0,100,0)
boom:Play()
    coroutine.wrap(function()
       for i = 1, 60, 2 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
        rng.Transparency = i/60
         wait()
           end
             wait()
           rng:Destroy()
             
       hum.WalkSpeed = 50
   wait(1)

for i,v in pairs(torso:GetChildren()) do if v:IsA("BodyVelocity") then
v:Destroy() jumping2 = true falling = true wait(0.3) jumping2 = false falling = false wait(1.7) jump = true hum.WalkSpeed = 16  falling = false
end end
wait()
end)()



end


wait(.1)


end
end)






m.KeyDown:connect(function(key)
   if key == "n" then

if falling == true then
falling = false
if jumping2 == true then
jumping2 = false
jump = false
BV = Instance.new("BodyVelocity", torso)
    BV.maxForce = Vector3.new(0,-20000,0)
      BV.P = -1000
    BV.velocity = Vector3.new(0,-70,0)
wait(0.6)
 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.35
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.Position = torso.Position - Vector3.new(0,2,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)

            
boom:Play()
    coroutine.wrap(function()
       for i = 1, 60, 2 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
        rng.Transparency = i/60
         wait()
           end
             wait()
           rng:Destroy()
             
      


for i,v in pairs(torso:GetChildren()) do if v:IsA("BodyVelocity") then
v:Destroy()  wait(2)  jumping2 = true hum.WalkSpeed = 16 
end end
wait()
end)()



end


wait(.1)

end
end
end)
m.KeyDown:connect(function(k)
if k == "f" then
asd3:Stop()
asd2:Stop()
asd4:Stop()
asd6:Stop()
asd5:Stop()
end
end) 
------------
-- ~CLarramore 2016



--==Made by NextFlame==--


repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local player=game.Players.LocalPlayer
local char=player.Character
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local joints={LeftShoulder=torso["Left Shoulder"], RightShoulder=torso["Right Shoulder"], LeftHip=torso["Left Hip"], RightHip=torso["Right Hip"]}
joints.LeftShoulder.Part0=torso
joints.RightShoulder.Part0=torso
joints.LeftHip.Part0=torso
joints.RightHip.Part0=torso
local c=function(f) Spawn(f) end
local add={
	Part=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
		return p
	end,
	Wedge=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
		return p
	end,
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
		return g
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end,
	Mesh=function(ins, par, s, of, t, id)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshId=id or "" m.MeshType=t end)
		return m
	end,
	Sound=function(parent, id, volume, pitch)
		local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
		return s
	end,
}
local modelName="Kung Fu" --Name here
pcall(function() player.Backpack[modelName]:remove() char[modelName]:remove() char["CharacterParts"]:remove() end)
local model=Instance.new("Model", char) model.Name="CharacterParts"
local modelB=Instance.new("Model", char) modelB.Name=modelName
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=modelName
local skincolor="Really black"
local gui=Instance.new("ScreenGui")
local body={}
local animate={}
local obj={}
--Variables--
local trailDeb=false
local keyDeb=false
local hitDeb=false
local loop=false
local speed=16
local combo=0
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, 1.2)
local Hit=add.Sound(torso, "http://roblox.com/asset/?id=10209225", 1, 1)
function createParts()
	--==PARTS==--
	torso.Transparency=1
	for i, v in pairs(char:children()) do if v:isA("CharacterMesh") then v:remove() end end
	gui.Parent=player.PlayerGui gui.Name=modelName
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.Torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1, 0))
	--==WELDS2==--
	add.Weld(body.Head, head, nil)
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	joints.LeftHip.Part0=body.Torso
	joints.RightHip.Part0=body.Torso
	--==Sign==--
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(-.25, 0, .5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, .5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(.25, 0, -.5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, -.5))
	---------------------------------------------------------------------------------------
	animate={
		["Head"]=function(cf)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf)
			body.TorsoW.C1=(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["ArmLeft"]=function(cf)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["ArmRight"]=function(cf)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["LegLeft"]=function(cf)
			legLeftW=add.Weld(leg.Left, body.LegLeft, CFrame.new(0, -1, 0))
			body.LegLeftW.C1=CFrame.new(-.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			coroutine.resume(coroutine.create(function()
				wait()
				legLeftW:remove()
			end))
		end;
		["LegRight"]=function(cf)
			legRightW=add.Weld(leg.Right, body.LegRight, CFrame.new(0, -1, 0))
			body.LegRightW.C1=CFrame.new(.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			coroutine.resume(coroutine.create(function()
				wait()
				legRightW:remove()
			end))
		end;
	}
	--==Objects==--	
	obj.attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "(5) Combos", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
	obj.attackLabel2=add.Gui("TextLabel", obj.attackLabel, "Really black", "Really black", "White", "Size18", "Punch[Right]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel3=add.Gui("TextLabel", obj.attackLabel2, "Really black", "Really black", "White", "Size18", "Punch[Left]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel4=add.Gui("TextLabel", obj.attackLabel3, "Really black", "Really black", "White", "Size18", "Kick[Right]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel5=add.Gui("TextLabel", obj.attackLabel4, "Really black", "Really black", "White", "Size18", "Kick[Left]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel6=add.Gui("TextLabel", obj.attackLabel5, "Really black", "Really black", "White", "Size18", "RappidKick", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	for i, v in pairs(modelB:children()) do
		if i==0 then return end
	end
	--==Weapon==--
end
function removeParts()
	pcall(function()
		if torso then
			joints.LeftShoulder.Part0=torso
			joints.RightShoulder.Part0=torso
			joints.LeftHip.Part0=torso
			joints.RightHip.Part0=torso
			torso.Transparency=0
		end
		player.PlayerGui[modelName]:remove()
		for i, v in pairs(model:children()) do v:remove() end
	end)
end
function lightningGen(startPos, endPos)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos))
	local startPosProx=startPos
	for i=1, 9 do
		local startPosProx2=startPosProx
		local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
		local findSize=pattern.Size.z/10
		local findOffSet=pattern.CFrame.lookVector*-1
		local compute=i*findSize*findOffSet
		local newStartPos=startPos
		local newEndPos=CFrame.new(random+compute+newStartPos).p
		local magnitude=(startPosProx2-newEndPos).magnitude
		local distance=(startPosProx2+newEndPos)/2
		local lightning=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2))
		c(function()
			for i=0, 1, .1 do wait()
				lightning.Transparency=i
			end
			lightning:remove()
		end)
		startPosProx=newEndPos
	end
	pattern:remove()
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z)
	return CFrame.new(pos, pos3)
end
function nearTorso(pos, dis)
	local temp
	local distance=dis
	for i, v in pairs(workspace:children()) do
		if v:isA("Model") then
			temp=v:findFirstChild("Torso")
			local humanoid=v:findFirstChild("Humanoid")
			if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
				distance=(temp.CFrame.p-pos).magnitude
				return temp
			end
		end
	end
end
function trail(pos, cf, col, size)
	c(function()
		local old=(pos.CFrame*cf).p
		while trailDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col or "White", 0, Vector3.new(size or .2, mag, size or .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Effect"
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.1 do
					wait()
					tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i)
				end
				trail:remove()
			end)
			c(function()
				for i=0, 1, .1 do
					wait()
					trail.Transparency=i
				end
			end)
		end
	end)
end
function rayCast(pos, dir, col)
	local magnitude=(pos-dir).magnitude
	local distance=(pos+dir)/2
	local ray=add.Part(workspace, true, false, col, 0, Vector3.new(.2, magnitude, .2), CFrame.new(distance, pos))
	return ray
end
function dmgHit(h)
	local dmg=math.random(5, 10)
	if keyDeb==true and h.Parent:findFirstChild("Humanoid") and hitDeb==false and h.Parent~=char then
		hitDeb=true
		local hHuman=h.Parent:findFirstChild("Humanoid")
		local hTorso=h.Parent:findFirstChild("Torso")
		hHuman.Health=hHuman.Health-dmg
		local fakeM=Instance.new("Model", workspace) fakeM.Name=-dmg
		local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
		local effect=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(1, 1, 1), hTorso.CFrame*CFrame.new(0, 4, 0)) effect.Name="Head"
		local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
		local effect=add.Part(workspace, true, false, "White", .5, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p)*CFrame.Angles(-math.pi/2, 0, 0))
		local effectM=add.Mesh("SpecialMesh", effect, Vector3.new(1, 1, 1), nil, nil, "http://www.roblox.com/asset/?id=20329976")
		c(function()
			for i=1, 2, .1 do wait()
				effectM.Scale=Vector3.new(i, i/2, i)
			end
			effect:remove()
		end)
		game.Debris:addItem(fakeM, 1)
		wait(.1)
		hitDeb=false
	end
end
function idled()
	animate.ArmLeft(CFrame.new(.5, 0, 0)*CFrame.Angles(math.rad(135), 0, math.rad(5)))
	animate.ArmRight(CFrame.new(-.5, 0, 0)*CFrame.Angles(math.rad(135), 0, -math.rad(5)))
end
function doAttacks()
	combo=combo+1
	if keyDeb==false then
		keyDeb=true
		if combo>0 then Slash:play()
			trailDeb=true
			trail(body.ArmRight, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90), 0, math.rad(90)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90), 0, math.rad(90)*i))
			end
		end
		if combo>2 then Slash:play()
			trailDeb=true
			trail(body.ArmLeft, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				animate.ArmLeft(CFrame.Angles(math.rad(90), 0, -math.rad(90)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				animate.ArmLeft(CFrame.Angles(math.rad(90), 0, -math.rad(90)*i))
			end
		end
		if combo>3 then Slash:play()
			idled()
			trailDeb=true
			trail(body.LegRight, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, math.rad(90)*i, 0))
				animate.LegLeft(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(0, 0, -math.rad(135)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, math.rad(90)*i, 0))
				animate.LegLeft(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(0, 0, -math.rad(135)*i))
			end
		end
		if combo>4 then Slash:play()
			idled()
			trailDeb=true
			trail(body.LegLeft, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, -math.rad(90)*i, 0))
				animate.LegRight(CFrame.new(.5*i, 0, 0)*CFrame.Angles(0, 0, math.rad(135)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, -math.rad(90)*i, 0))
				animate.LegRight(CFrame.new(.5*i, 0, 0)*CFrame.Angles(0, 0, math.rad(135)*i))
			end
		end
		if combo>5 then
			idled()
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -.8*i, 0)*CFrame.Angles(math.rad(80)*i, -math.rad(90)*i, 0))
			end
			for i=1, 20 do wait() Slash:play()
				torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
				animate.LegLeft(CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
				animate.LegRight(CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
			end
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -.8*i, 0)*CFrame.Angles(math.rad(80)*i, -math.rad(90)*i, 0))
			end
		end
		trailDeb=false
		keyDeb=false
		combo=0
		idled()
	end

	for i, v in pairs(player.Character:GetChildren()) do
		if v:IsA("BasePart") then
			v.Touched:connect(function(player)
				if player.Size.X<30 then
					player.Anchored = false
					player:BreakJoints()
				end
			end)
		end
	end
end
bin.Selected:connect(function(mouse) createParts()
	for i, v in pairs(char:children()) do if v:isA("BasePart") then v.Touched:connect(dmgHit) end end
	for i=0, 1, .1 do wait()
		animate.ArmLeft(CFrame.new(.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(5)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(5)*i))
	end
	mouse.Button1Down:connect(doAttacks)

end)
bin.Deselected:connect(function()
	for i=1, 0, -.1 do wait()
		animate.ArmLeft(CFrame.new(.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(5)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(5)*i))
	end
	removeParts()
end)--mediafire