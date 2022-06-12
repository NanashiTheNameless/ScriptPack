p=game.Players.LocalPlayer
c=p.Character
m=p:GetMouse()
player = game.Players.royalwiryman 
owner=player.Name
character=player.Character
mouse=player:GetMouse() 
    mouse.KeyDown:connect(function(key)
    if string.byte(key)==102 then

game:GetService("Chat"):Chat(Workspace.royalwiryman.Head,"Chidori!")

r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Really red")
r.Anchored=false
r.CanCollide=false
r.Reflectance=0
r.Transparency=.3
r.Size=Vector3.new(2,2,2)
r:BreakJoints()
w=Instance.new("Weld", c["Right Arm"])
w.Part0=c["Right Arm"]
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c

clarp=Instance.new("SpecialMesh")
clarp.MeshId = "http://www.roblox.com/Asset/?id=9982590"
clarp.Parent = r
game.Debris:AddItem(clarp, 10)

pee=Instance.new("BodyAngularVelocity")
pee.Parent = clarp
pee.maxTorque=Vector3.new(.1/0,.1/0,.1/.1)
pee.angularvelocity=Vector3.new(4,3,20)

function blewm()
bewm=Instance.new("Explosion")
bewm.BlastRadius=15
bewm.BlastPressure=0
bewm.Parent=clarp
end

d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*40
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(4)
blewm()
h:Destroy()
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end 
end)