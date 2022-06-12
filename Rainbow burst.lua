--"http://www.roblox.com/asset/?id="--
--[["http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="]]
htp,none = "http://www.roblox.com/asset/?id=","http://www.roblox.com/asset/?id=0"
uw,cfn,cf,vc,bc,col = workspace,CFrame.Angles,CFrame.new,Vector3.new,BrickColor.new,Color3.new
name = "ace28545"
s = {}
s.spike = htp.."1033714"
s.Chain = htp.."2806162"
s.falcon = none
s.bewm = none
trollpowerz = false
anim = false
modelname = "Trollz" player = game.Players[name] pb = player.Backpack pg = player.PlayerGui char = player.Character torso = char.Torso head = char.Head RA = char["Right Arm"] LA = char["Left Arm"] RL = char["Right Leg"] LL = char["Left Leg"] modelparent = char pcall(function() modelparent[modelname]:Destroy()  end) pcall(function() pb[modelname]:Destroy() end)
m = Instance.new('Model',modelparent) m.Name = modelname pos = torso.CFrame
if not player then while wait() do modelparent[modelname]:Destroy() end end
function chat(tex,color) game:GetService("Chat"):Chat(game.Players[name].Character.Head,tex,color) end
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
h = Instance.new('HopperBin',pb)
h.Name = modelname 
function key2(key)
if key == "f" and anim == false then
anim = true
chat("Whats happening to me????","Blue")
wait(2)
coroutine.resume(coroutine.create(function()
trollpowerz = true
while trollpowerz == true do
wait(.05)
MMMAGIC(torso,4,4,4,0,0,0,BrickColor:Random()) 
end
end))
chat("ARGH IT BURNS","Blue")
wait(2)
chat("I can't take it any more.","Blue")
wait(2)
chat("TO MUCH RAINBOW","Blue")
wait(2)
chat("ITS TO MUCH EPICNESS CAN'T STOP BEING EPIC","Blue")
wait(2)
trollpowerz = false
chat("X_X","Red")
for i = 1,20 do
wait(.005)
UltimaMMMAGIC(torso,100,100,100,0,0,0,BrickColor:Random()) 
BlastEffect(torso,20,20,20,0,0,0,0,0,0,BrickColor:Random()) 
CircleMagic2(torso,15,15,15,0,0,0,1.59,0,0,BrickColor:Random()) 
end
for i = 1,10 do
wait(math.random(.6,.7))
UltimaMMMAGIC(torso,.3,.3,.3,math.random(-20,20),0,math.random(-20,20),BrickColor:Random()) 
end
end
if key == "g" and anim == false then
chat("Falcon Punch!","Blue")
end
end
h.Selected:connect(function(mouse)
mouse.KeyDown:connect(key2)
end)
--mediafire
