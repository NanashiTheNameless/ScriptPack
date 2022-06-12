Objects={
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

Set={
SharedG=_G,
Ver=_VERSION,
CoreGui=Objects.Gm:GetService("CoreGui"),
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
["Rad"]=function(n) return math.rad(n) end
}

Func={
["Weld"]=function(p0,p1,c0,c1,parent) local w=Objects.Inst.new("Weld",parent) w.Part0=P0 w.Part1=Part1 w.C0=c0 w.C1=c1 return w end,
["GetColor3FromBrickColor"]=function(CL3) return Objects.C3.new(CL3.Color) end,
["New"]=function(sx,sy,sz,bc,t,c,a,parent) p=Objects.Inst.new("Part",parent) p.Size=Objects.Vector.new(sx,sy,sz) p.BrickColor=Objects.BC.new(bc) p.Transparency=t p.CanCollide=c p.Anchored=a return p end,
["Msh"]=function(p,t,i) m=Instance.new("SpecialMesh",p) m.Texture=Set.RBXAsset..t m.MeshId=Set.RBXAsset..i return m end,
["BP"]=function(p,mf) bp=Instance.new("BodyPosition",p) bp.maxForce=mf return bp end,
["BG"]=function(p,mt) bg=Intsance.new("BodyGyro",p) bg.maxTorque=mt return bg end,
["Fire"]=function(p,h,s) f=Instance.new("Fire",p) f.Heat=h f.Size=s end
}


apart=3

coroutine.resume(coroutine.create(function()
while wait() do
for i=3,20 do
apart=i
wait(0.1)
end
for i=20,3,-1 do
apart=i
wait(0.1)
end
end
end))

num=3
a=true

while wait() do
for i=1,num do
coroutine.resume(coroutine.create(function()
local p=Func.New(1,1,1,"Navy blue",0,false,false,Workspace)
-- p.BrickColor=BrickColor.random()
p.Anchored=a
p.Position=Vector3.new(game.Players.LocalPlayer.Character.Head.Position.X+math.cos(math.random(0,5))*apart,game.Players.LocalPlayer.Character.Head.Position.Y+math.tan(math.random(0,5))*apart,game.Players.LocalPlayer.Character.Head.Position.Z+math.sin(math.random(0,5))*apart)
for i=10,0,-1 do
p.Transparency=i/10
wait()
end
p:remove()
end))
end
end