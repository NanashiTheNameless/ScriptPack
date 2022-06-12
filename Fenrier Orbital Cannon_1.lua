--[[
 
 
 
local c=game.Players:children()
for i=1,#c do
coroutine.resume(coroutine.create(function() ]]
TrollestiaMode=true
target=game.Players.TARGETCHANGENAME
Character=target.Character
--Character=workspace["Demon Girl"]
Torso=Character.Torso
lightning=false
whathesaid=nil
chatcon=nil
 
 
function ORBITALFRIENDSHIPCANNON()
 
function ORBITALCANNONSOUNDS() 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=2101144" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 0.1
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=2101144" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 0.3
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=2101144" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 1
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101148" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
end
 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=Instance.new("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=Vector3.new(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
                p2.Parent=workspace
                m=Instance.new("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(1,1,1) Part.Transparency=i*.02 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(2,2,2) Part.Transparency=i*.03 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(2,5,2) Part.Transparency=i*.03 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function CircleMagic(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=Instance.new("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=CFrame.new(x2,y2,z2) * CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(5,5,5) --[[Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.02 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 
 
function CircleMagic2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = Instance.new("SpecialMesh") 
        msh1.Scale = Vector3.new(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, x1*50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(x1,x1,x1) Part.Transparency=i*.03 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = Instance.new("BlockMesh") 
        msh1.Scale = Vector3.new(0.5,0.5,0.5) 
        S=Instance.new("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=Vector3.new(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=Instance.new("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=CFrame.new(x2,y2,z2) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 50 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(5,5,5) --[[Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.02 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
Stun2=function(Feh,x,y,z)
coroutine.resume(coroutine.create(function(part)
--[[                if part.Parent:FindFirstChild("Torso")==nil then
                        return
                end]]
                Torsoh2=part
                End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
                ST2=Torsoh2.Position
--[[                p=Instance.new("BodyPosition")
                p.P=3000
                p.D=100
                p.maxForce=Vector3.new(math.huge,0,math.huge)
                p.position=Torsoh2.Position
                p.Parent=Torsoh2]]
                while part.Parent ~= nil and lightning == true do 
--                        f1:Play()
--                        p.position=ST2+Vector3.new(math.random(-x,x)/10,math.random(-y,y)/10,math.random(-z,z)/10)
                        Start2=End2
                        End2=Torsoh2.CFrame*CFrame.new(math.random(-x,x)/10,math.random(-y,y)/10,math.random(-z,z)/10)
                        e=Instance.new("Part")
                        e.TopSurface=0
                        e.BottomSurface=0
                        e.CanCollide=false
                        e.Anchored=true
                        e.formFactor="Symmetric"
                        e.Size=Vector3.new(1,1,1)
                        Look2=(End2.p-Start2.p).unit
                        m=Instance.new("BlockMesh")
                        m.Scale=Vector3.new(10,10,(Start2.p-End2.p).magnitude)
                        m.Parent=e
                        e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
                        e.Name="Zap"
                        e.BrickColor=BrickColor:Random()
                        e.Parent=part.Parent
                        coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
                        wait()
                end
                wait(.45)
--                p.Parent=nil
end),Feh) 
end
 
ORBITALCANNONSOUNDS() 
 
coroutine.resume(coroutine.create(function(p) 
p=Instance.new("Part")
p.Parent=workspace
p.CanCollide=false
p.Anchored=true
p.Transparency=1
p.CFrame=Torso.CFrame
for i=1,100 do
wait(0.1)
MMMAGIC(p,1,1,1,math.random(-20,20),0,math.random(-20,20),BrickColor:Random()) 
end
end),p)
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,50,0)*30
lightning=true
Stun2(Torso,0,0,0)
ss=3
for i=1,3 do
CircleMagic2(Torso,ss,ss,ss,0,0,0,1.57,0,0,BrickColor:Random()) 
EVENMOARMAGIX(Torso,5,5,5,0,0,0,0,0,0,BrickColor:Random()) 
WaveEffect(Torso,5,5,5,0,0,0,0,0,0,BrickColor:Random()) 
BlastEffect(Torso,5,5,5,0,0,0,0,0,0,BrickColor:Random()) 
ss=ss+2
end
for i=1,100 do
wait()
CircleMagic2(Torso,5,5,5,0,0,0,1.57,0,0,BrickColor:Random()) 
end
for i=0,1000 do
wait(0.1)
end
vel2.Parent=nil
lightning=false
end 
 
if TrollestiaMode==true then
function onChatted(msg, recipient) 
if string.sub(msg, 0, 3) == "yes" or string.sub(msg, 0, 3) == "Yes" or string.sub(msg, 0, 3) == "YES" then 
whathesaid="Yes"
end
if string.sub(msg, 0, 2) == "no" or string.sub(msg, 0, 2) == "No" or string.sub(msg, 0, 2) == "NO" then 
whathesaid="No"
end
end 
 
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Hey "..Character.Name..", do you like mmmm bananas?","Blue")
coroutine.resume(coroutine.create(function() 
wait(5)
if whathesaid==nil then
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Answer the question "..Character.Name..". Do you like mmmm bananas?","Blue")
end
wait(5)
if whathesaid==nil then
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Do, do you like mmmm bananas? "..Character.Name.."?","Blue")
end
wait(5)
if whathesaid==nil then
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You don't know "..Character.Name.."?","Blue")
end
wait(5)
if whathesaid==nil then
chatcon:disconnect()
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"So you're a bitch that doesn't know whether or not he or she likes mmmmm bananas","Blue")
wait(5)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You're a bitch, ","Blue")
wait(1)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Who doesn't know whether or not he or she likes mmmm bananas","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Well I know where you can find out.","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You can find out,","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"ON THE MOOOOOOOOOOOOOOOOOOOOOOOOOOON","Blue")
wait(1)
coroutine.resume(coroutine.create(function() 
ORBITALFRIENDSHIPCANNON()
end))
wait(3)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"BEEEYEEETCH!!!","Blue")
end
end))
chatcon=target.Chatted:connect(function(msg, recipient) onChatted(msg, recipient) end) 
while whathesaid==nil do
wait()
end
if whathesaid=="Yes" then
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"So you're a beyeetch that likes mmmm bananas?","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You're a bitch that likes mmmm bananas?","Blue")
wait(1)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You're a bitch that likes mmmm bananas?.","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Well that's good.","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"'Cause you're about to go bananas,","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"ON THE MOOOOOOOOOOOOOOOOOOOOOOOOOOON","Blue")
wait(1)
coroutine.resume(coroutine.create(function() 
ORBITALFRIENDSHIPCANNON()
end))
wait(3)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"BEEEYEEETCH!!!","Blue")
elseif whathesaid=="No" then
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"So you're a beyeetch that doesn't likes mmmmm bananas?","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You're a bitch that doesn't like bananas.","Blue")
wait(1)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"You're a bitch that doesn't like bananas.","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"Well that's good.","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"'Cause you ain't finding any bananas,","Blue")
wait(2)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"ON THE MOOOOOOOOOOOOOOOOOOOOOOOOOOON","Blue")
wait(1)
coroutine.resume(coroutine.create(function() 
ORBITALFRIENDSHIPCANNON()
end))
wait(3)
game:GetService("Chat"):Chat(game.Players.kash5.Character.Head,"BEEEYEEETCH!!!","Blue")
end
else
ORBITALFRIENDSHIPCANNON()
end
--[[end))
end]]
 
-- lego mediafire