me = game.Players.yfc.Character


if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") script.Parent = h 
h.Name = "MultiTool" 
h.Parent = game:getService("Players").yfc.Backpack 
wait(0.5) 
end 
bin = script.Parent 
player = bin.Parent.Parent 

------------------------------------

weldarm = Instance.new("Weld") 
weldarm.Parent = me 
weldarm.Part0 = me["Right Arm"] 
weldarm.Name = "holder"
weldarm.Part1 = me.Torso
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-51.85,0,0)


------------------main--part---------------------------

b = Instance.new("Part") 
b.Parent = me 
b.Name = "Handle2" 
b.Size = Vector3.new(1, 1, 1) 
b.CanCollide = false
b.BrickColor = BrickColor.new("Really black")
b.Position = workspace.Base.Position
b:BreakJoints()

weld = Instance.new("Weld") 
weld.Parent = b
weld.Part0 = b
weld.Part1 = me["Right Arm"] 
weld.C0 = CFrame.new(0.2,0,1) * CFrame.fromEulerAnglesXYZ(51.85,0,0)


mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(0.5,3,0.5) 
mesh.Parent = b

c = Instance.new("Part") 
c.Parent = me 
c.Name = "Handle2" 
c.Size = Vector3.new(1, 1, 1) 
c.CanCollide = false
c.Position = workspace.Base.Position
c:BreakJoints()

cl = me.Head.face:clone ()
cl.Parent = c

weld = Instance.new("Weld") 
weld.Parent = c
weld.Part0 = c
weld.Part1 = b 
weld.C0 = CFrame.new(0,-1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)


mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(1,1,1) 
mesh.Parent = c

d = Instance.new("Part") 
d.Parent = me 
d.Name = "Handle2" 
d.Size = Vector3.new(1, 1, 1) 
d.Transparency = 0.8 
d.CanCollide = false
d.Position = workspace.Base.Position
d:BreakJoints()

weld = Instance.new("Weld") 
weld.Parent = d
weld.Part0 = d
weld.Part1 = c 
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)


mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(1.2,1.2,1.2) 
mesh.Parent = d


-----------------------------------------------------------

-------------------------------magnatude bit-------------------------
main = nil 
holding=nil 
lazor=nil 
local pq = Instance.new("Part") 
pq.Parent = nil 
fire={} 
main = pq 
local CFI = Instance.new("BodyGyro") 
CFI.maxTorque=Vector3.new(math.huge,math.huge,math.huge) 
local pos = Instance.new("BodyPosition") 
pos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
s=0 
num=5 
off=false 
poses = {CFI} 
stander=false 
function wire(pos1,pos2,col,tra,ref) 
local P = Instance.new("Part") 
local P2 = pos1 
local P1 = pos2 
P.Name = "Wire" 
local Place0 = CFrame.new(P1.x,P1.y,P1.z) 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(P1 - P2).magnitude) 
P.CFrame = CFrame.new((P1 + P2)/2,Place0.p) 
P.Parent = script.Parent 
P.BrickColor = BrickColor.new(col) 
P.Transparency = tra 
P.Reflectance = ref 
P.Anchored = true 
P.CanCollide = false 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Parent=player.Character 
local m = Instance.new("SpecialMesh") 
m.Parent = P 
m.MeshType = "Brick" 
m.Scale = Vector3.new(0.2,0.2,1) 
game:getService("Debris"):AddItem(P,0.5) 
end 


function onMoved(mouse) 

end 

function onButton1Down(mouse) 

end 

function onButton1Up(mouse) 

end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="k" then 
if mouse.Target ~= nil and mouse.Target.Name ~= "Base" then 
mouse.Target:remove ()
end 
wire(c.Position,mouse.hit.p,"Really red",0.5,0.5) ----------it being used
end 
end 

if key=="b" then 
if mouse.Target ~= nil then 
bomb = Instance.new("Part") 
bomb.Size = Vector3.new(1, 1, 1) 
bomb.Parent = game.Workspace
bomb.Position = mouse.hit.p
bomb.Name = "staffstuff"
smoke = Instance.new("Smoke") 
smoke.Parent = bomb
smoke.Opacity = 0.5
smoke.size = 30
end 
wire(c.Position,mouse.hit.p,"Really red",0.5,0.5) ----------it being used
end 

if key=="t" then 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-51.85,0,1)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-52.85,0,2)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-53.85,0,3)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-54.85,0,4)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-55.85,0,5)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-54.85,0,4)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-53.85,0,3)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-52.85,0,2)
wait(0.1) 
weldarm.C0 = CFrame.new(-1.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(-51.85,0,0)
wait(0.1) 
end 








end 


function onDeselected(mouse) 
hold = false 
end 




function onSelected(mouse) 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.Move:connect(function() onMoved(mouse) end) 
end 


bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected)  