O={
Gm=Game,
BC=BrickColor,
C3=Color3,
Inst=Instance,
Vector=Vector3,
CFrame={
CF=CFrame,
CA=CFrame.Angles
},
UDim=UDim2
}


pcall(function() Workspace:FindFirstChild("TheArenaPC"):Remove() end)

---MAIN MODEL---
Arena = Instance.new("Model",Workspace)
Arena.Name = "TheArenaPC"
-----------------------

-----mugexaddings :3----
cfn,ang,v3n = CFrame.new,CFrame.Angles,Vector3.new
-----for mugex :3------

S={
SharedG=_G,
Ver=_VERSION,
CoreGui=O.Gm:GetService("CoreGui"),
RBXAsset="http://www.roblox.com/asset/?id="
}

M={
["Round"]=function(n) return math.ciel(n) end,
["Add"]=function(n1,n2) return n1+n2 end,
["Multiply"]=function(n1,n2) return n1*n2 end,
["Divide"]=function(n1,n2) return n1/n2 end,
["Subtract"]=function(n1,n2) return n1-n2 end,
["Cos"]=function(n) return math.cos(n) end,
["Sin"]=function(n) return  math.sin(n) end,
["Tan"]=function(n) return math.tan(n) end,
["Rad"]=function(n) return math.rad(n) end,
["Rand"] =function(a,b) return math.random(a,b) end
}

F={
["Weld"]=function(p0,p1,c0,c1,parent) local w=O.Inst.new("Weld",parent) w.Part0=P0 w.Part1=Part1 w.C0=c0 w.C1=c1 return w end,
["GetColor3FromBrickColor"]=function(CL3) return O.C3.new(CL3.Color) end,
["New"]=function(sx,sy,sz,bc,t,c,a,parent) p=O.Inst.new("Part",parent) p.Size=O.Vector.new(sx,sy,sz) p.BrickColor=O.BC.new(bc) p.Transparency=t p.CanCollide=c p.Anchored=a return p end,
["Msh"]=function(p,t,i) m=Instance.new("SpecialMesh",p) m.Texture=Set.RBXAsset..t m.MeshId=Set.RBXAsset..i return m end,
["BP"]=function(p,mf) bp=Instance.new("BodyPosition",p) bp.maxForce=mf return bp end,
["BG"]=function(p,mt) bg=Intsance.new("BodyGyro",p) bg.maxTorque=mt return bg end,
["Fire"]=function(p,h,s) f=Instance.new("Fire",p) f.Heat=h f.Size=s end,
["GetMagnitude"]=function(p,p2) return (p.Position-p2.Position).magnitude end,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
}




-- base
local p1337=F.New(100,0.2,100,"Black",0.5,1,1,Arena)
p1337.CFrame=CFrame.new(0,1,0)

-- spawn
local spawn=O.Inst.new("SpawnLocation",Arena)
spawn.TopSurface,spawn.BottomSurface="Smooth","Smooth"
spawn.Anchored=true
spawn.CFrame=spawn.CFrame*CFrame.new(0,2,0)
spawn.Size=Vector3.new(4,1,4)
spawn.Transparency=0.5
spawn.BrickColor=BrickColor.new("Really red")
spawn.CFrame=CFrame.new(0,2,0)
coroutine.resume(coroutine.create(function()
while wait() do
spawn.CFrame=spawn.CFrame*CFrame.Angles(0,0.08,0)
end
end))

-- stairs
for i=0,20 do
local p1=F.New(2,1,4,"White",.5,1,1,Arena )
p1.Position=Vector3.new(math.cos(i*100),0,math.sin(i*100))+Vector3.new(10,0,0)
local p2=F.New(2,1,4,"White",.5,1,1,Arena )
p2.Position=Vector3.new(math.cos(i*-100),0,math.sin(i*-100))+Vector3.new(-10,0,0)
end

F.C(function()
-- arena casing
for i=0,4000 do
wait()
local m=math.random(1,4)
local p1=nil
if m==1 then
p1=F.New(1,1,1,"Black",0,1,1,Arena )
elseif m==2 then
p1=F.New(1,1,1,"White",0,1,1,Arena )
elseif m==3 then
p1=F.New(1,1,1,"Really red",0,1,1,Arena )
elseif m==4 then
p1=F.New(1,1,1,"Really blue",0,1,1,Arena )
end
p1.Position=Vector3.new(math.cos(i*100)*40,0,math.sin(i*100)*40)
end
end)

---FIREWORKS---
---p1337 is da base :) yup---

while wait(.5) do
wait()
local p1=F.New(1,1,1,"White",.5,false,false,Arena )

p1.CFrame = p1337.CFrame * cfn(M.Rand(-50,50),1,M.Rand(-50,50))
p1:BreakJoints()

Instance.new("BodyForce",p1).force = v3n(0,10000,0)

delay(2,function()
e=Instance.new("Explosion",Workspace)
e.Position = p1.Position
e.BlastRadius=0
p1:Remove()
end)

end
