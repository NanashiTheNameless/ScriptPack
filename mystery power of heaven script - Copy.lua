Player=game.Players.luxulux
Plr=game.Workspace.luxulux
local Tool=Instance.new("HopperBin",Player.Backpack)
Tool.Name="UnNamed"
script.Parent=Tool
Plr.Humanoid.MaxHealth=math.huge
w1=Instance.new("Weld")
w1.Parent=Plr["Right Arm"]
w1.Part0=w1.Parent
w1.Part1=Plr.Torso
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
w2=Instance.new("Weld")
w2.Parent=Plr["Left Arm"]
w2.Part0=w2.Parent
w2.Part1=Plr.Torso
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
w3=Instance.new("Weld")
w3.Parent=Plr.Head
w3.Part0=w3.Parent
w3.Part1=Plr.Torso
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
Plr.Humanoid.WalkSpeed=55
Plr.Head.face.Transparency=1
Plr.Head.BrickColor=BrickColor.new(1)
Plr.Torso.BrickColor=BrickColor.new(1)
Plr["Right Arm"].BrickColor=BrickColor.new(1)
Plr["Right Leg"].BrickColor=BrickColor.new(1)
Plr["Left Arm"].BrickColor=BrickColor.new(1)
Plr["Left Leg"].BrickColor=BrickColor.new(1)
Srt=Plr:findFirstChild("Shirt")
if Srt~=nil then
Srt:Destroy()
end
Pt=Plr:findFirstChild("Pants")
if Pt ~= nil then
Pt:Destroy()
end
for i,child in ipairs(Plr:GetChildren()) do
if child:IsA("Hat") then
child.Handle.Transparency=1
end
end
Plr.Humanoid.Died:connect(function()        
local Targ=Plr.Torso.Position
local ex=Instance.new("Explosion",Workspace)
ex.BlastRadius=1000
ex.Position=Targ
end)
function onButton1Down(mouse)
hit=mouse.Target
if hit.Parent:IsA("Model") then
Targ=hit.Parent
attach=Instance.new("Weld")
attach.Parent=Plr.Torso
attach.Part0=attach.Parent
attach.Part1=Targ.Torso
attach.C0=CFrame.new(0,0,0)*CFrame.new(0,0,-1.8)*CFrame.new(0,0,0)
end
end
 
function onSelected(mouse)
mouse.Button1Down:connect(function()onButton1Down(mouse) end)
end
 
script.Parent.Selected:connect(onSelected)
function onKeyDown(key)
key:lower()
if key=="q" then
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start Head
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start larm
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start rarm
wait(.01)
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.1,0,0)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.4,-0.1,0)*CFrame.fromEulerAnglesXYZ(0.1,-0.1,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.4,-0.1,0)*CFrame.fromEulerAnglesXYZ(0.1,0.1,0)--1
wait(.01)
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.2,0,0)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.3,-0.2,0)*CFrame.fromEulerAnglesXYZ(0.2,-0.2,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.3,-0.2,0)*CFrame.fromEulerAnglesXYZ(0.2,0.2,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,-0.3,0)*CFrame.fromEulerAnglesXYZ(0.3,-0.3,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.2,-0.3,0)*CFrame.fromEulerAnglesXYZ(0.3,0.3,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.1,-0.4,0)*CFrame.fromEulerAnglesXYZ(0.4,-0.4,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.1,-0.4,0)*CFrame.fromEulerAnglesXYZ(0.4,0.4,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.5,-0.5,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.5,0.5,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.6,-0.6,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.6,0.6,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.7,-0.7,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.7,0.7,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.8,-0.8,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.8,0.8,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.9,-0.9,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.9,0.9,0)--1
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(1,1,0)--Finish rarm
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(1,-1,0)--Finish larm
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.3,0,0)--Finish Head
for i,hat in ipairs(Plr:GetChildren()) do
if hat:IsA("Hat") then
hat.Handle.Transparency=1
end
end
Plr.Head.face.Transparency=1
Plr.Head.BrickColor=BrickColor.new(1003)
Plr.Torso.BrickColor=BrickColor.new(1003)
Plr["Right Arm"].BrickColor=BrickColor.new(1003)
Plr["Right Leg"].BrickColor=BrickColor.new(1003)
Plr["Left Arm"].BrickColor=BrickColor.new(1003)
Plr["Left Leg"].BrickColor=BrickColor.new(1003)
elseif key=="p" then
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(1,-1,0)--Start larm
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(1,1,0)--Start rarm
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.3,0,0)--Start Head
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.9,-0.9,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.9,0.9,0)--1
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.2,0,0)--3
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.8,-0.8,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.8,0.8,0)--1
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0.1,0,0)--3
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.7,-0.7,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.7,0.7,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.6,-0.6,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.6,0.6,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.5,-0.5,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1,-0.5,0)*CFrame.fromEulerAnglesXYZ(0.5,0.5,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.1,-0.4,0)*CFrame.fromEulerAnglesXYZ(0.4,-0.4,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.1,-0.4,0)*CFrame.fromEulerAnglesXYZ(0.4,0.4,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,-0.3,0)*CFrame.fromEulerAnglesXYZ(0.3,-0.3,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.2,-0.3,0)*CFrame.fromEulerAnglesXYZ(0.3,0.3,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.3,-0.2,0)*CFrame.fromEulerAnglesXYZ(0.2,-0.2,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.3,-0.2,0)*CFrame.fromEulerAnglesXYZ(0.2,0.2,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.4,-0.1,0)*CFrame.fromEulerAnglesXYZ(0.1,-0.1,0)--2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.4,-0.1,0)*CFrame.fromEulerAnglesXYZ(0.1,0.1,0)--1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Finish larm
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Finish rarm
w3.C0=CFrame.new(0,0,0)*CFrame.new(0,-1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start Head
Plr.Head.face.Transparency=1
Plr.Head.BrickColor=BrickColor.new(1)
Plr.Torso.BrickColor=BrickColor.new(1)
Plr["Right Arm"].BrickColor=BrickColor.new(1)
Plr["Right Leg"].BrickColor=BrickColor.new(1)
Plr["Left Arm"].BrickColor=BrickColor.new(1)
Plr["Left Leg"].BrickColor=BrickColor.new(1)
elseif key=="e" then
local x=Instance.new("ForceField",Plr)
ex=Instance.new("Explosion",Workspace)
ex.Position=Plr.Head.Position
ex.BlastRadius=1000
wait(2)
Plr.ForceField:Destroy()
elseif key=="r" then
for i,child in ipairs(Plr:GetChildren()) do 
if child:IsA("Hat") then
child.Handle.Transparency=1
end
end
Plr.Head.face.Transparency=1
Plr.Head.Transparency=1
Plr.Torso.Transparency=1
Plr["Left Arm"].Transparency=1
Plr["Right Arm"].Transparency=1
Plr["Left Leg"].Transparency=1
Plr["Right Leg"].Transparency=1
elseif key=="t" then
Plr.Head.Transparency=0
Plr.Torso.Transparency=0
Plr["Left Arm"].Transparency=0
Plr["Right Arm"].Transparency=0
Plr["Left Leg"].Transparency=0
Plr["Right Leg"].Transparency=0
elseif key=="l" then
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start 1
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)--Start 2
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.4,0.1,0.1)*CFrame.fromEulerAnglesXYZ(-0.1,-0.1,0)--Start 2
w1.C0=CFrame.new(0.1,0,0)*CFrame.new(-1.5,0.1,0)*CFrame.fromEulerAnglesXYZ(-0.1,0.1,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.3,0.2,0.2)*CFrame.fromEulerAnglesXYZ(-0.2,-0.2,0)--Start 2
w1.C0=CFrame.new(0.2,0,0)*CFrame.new(-1.5,0.2,0.1)*CFrame.fromEulerAnglesXYZ(-0.2,0.2,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.3,0.3)*CFrame.fromEulerAnglesXYZ(-0.3,-0.3,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.3,0.2)*CFrame.fromEulerAnglesXYZ(-0.3,0.3,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.4,0.4)*CFrame.fromEulerAnglesXYZ(-0.4,-0.4,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.4,0.3)*CFrame.fromEulerAnglesXYZ(-0.4,0.4,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.5,0.5)*CFrame.fromEulerAnglesXYZ(-0.5,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.5,0.4)*CFrame.fromEulerAnglesXYZ(-0.5,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.6,0.6)*CFrame.fromEulerAnglesXYZ(-0.6,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.6,0.5)*CFrame.fromEulerAnglesXYZ(-0.6,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.8,0.6)*CFrame.fromEulerAnglesXYZ(-0.7,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.7,0.5)*CFrame.fromEulerAnglesXYZ(-0.7,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,0.9,0.6)*CFrame.fromEulerAnglesXYZ(-0.8,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.8,0.5)*CFrame.fromEulerAnglesXYZ(-0.8,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1,0.6)*CFrame.fromEulerAnglesXYZ(-0.9,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,0.9,0.5)*CFrame.fromEulerAnglesXYZ(-0.9,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.1,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.1,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.2,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.2,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.3,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.3,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.4,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.4,-0.5,0)--Start 2
wait(.01)
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.5,0.5,0)--Finish 1
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.5,0)--Finish 2
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.2,1.1,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.5,0)--Start 2
w1.C0=CFrame.new(0.3,0,0)*CFrame.new(-1.5,1,0.5)*CFrame.fromEulerAnglesXYZ(-1.5,0.5,0)--Start 1
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.3,1,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.4,0)
w1.C0=CFrame.new(0.2,0,0)*CFrame.new(-1.5,0.9,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0.4,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.4,0.9,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.3,0)
w1.C0=CFrame.new(0.1,0,0)*CFrame.new(-1.5,0.8,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0.3,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0.8,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.2,0)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.7,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0.2,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0.7,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,-0.1,0)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.6,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0.1,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0.6,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)
wait(.01)
w2.C0=CFrame.new(0,0,0)*CFrame.new(1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)--Finish 2
w1.C0=CFrame.new(0,0,0)*CFrame.new(-1.5,0.5,0.6)*CFrame.fromEulerAnglesXYZ(-1.5,0,0)--Finish 1
tw1=Instance.new("Weld")
tw1.Parent=Targ.Head
tw1.Part0=tw1.Parent
tw1.Part1=Targ.Torso
tw1.C0=CFrame.new(0,0,0)*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
tw2=Instance.new("Weld")
tw2.Parent=Targ["Left Arm"]
tw2.Part0=tw2.Parent
tw2.Part1=Targ.Torso
tw2.C0=CFrame.new(0,0,0)*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
tw3=Instance.new("Weld")
tw3.Parent=Targ["Right Arm"]
tw3.Part0=tw3.Parent
tw3.Part1=Targ.Torso
tw3.C0=CFrame.new(0,0,0)*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
tw4=Instance.new("Weld")
tw4.Parent=Targ["Right Leg"]
tw4.Part0=tw4.Parent
tw4.Part1=Targ.Torso
tw4.C0=CFrame.new(0,0,0)*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
tw5=Instance.new("Weld")
tw5.Parent=Targ["Left Leg"]
tw5.Part0=tw5.Parent
tw5.Part1=Targ.Torso
tw5.C0=CFrame.new(0,0,0)*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
attach:Destroy()
p1=Targ:findFirstChild("Head")
if p1~=nil then
p1.BrickColor=BrickColor.new(26)
p1.Transparency=0.1
wait(0.1)
p1.Transparency=0.2
wait(.01)
p1.Transparency=0.3
wait(0.1)
p1.Transparency=0.4
wait(0.1)
p1.Transparency=0.5
wait(0.1)
p1.Transparency=0.6
wait(0.1)
p1.Transparency=0.7
p1:Destroy()
end
p2=Targ:findFirstChild("Torso")
if p2~=nil then
p2.BrickColor=BrickColor.new(26)
p2.Transparency=0.1
wait(0.1)
p2.Transparency=0.2
wait(0.1)
p2.Transparency=0.3
wait(0.1)
p2.Transparency=0.4
wait(0.1)
p2.Transparency=0.5
wait(0.1)
p2.Transparency=0.6
wait(0.1)
p2.Transparency=0.7
p2:Destroy()
end
p3=Targ:findFirstChild("Right Arm")
if p3~=nil then
p3.BrickColor=BrickColor.new(26)
p3.Transparency=0.1
wait(0.1)
p3.Transparency=0.2
wait(0.1)
p3.Transparency=0.3
wait(0.1)
p3.Transparency=0.4
wait(0.1)
p3.Transparency=0.5
wait(0.1)
p3.Transparency=0.6
wait(0.1)
p3.Transparency=0.7
p2:Destroy()
end
p4=Targ:findFirstChild("Left Arm")
if p4~=nil then
p4.BrickColor=BrickColor.new(26)
p4.Transparency=0.1
wait(0.1)
p4.Transparency=0.2
wait(0.1)
p4.Transparency=0.3
wait(0.1)
p4.Transparency=0.4
wait(0.1)
p4.Transparency=0.5
wait(0.1)
p4.Transparency=0.6
wait(0.1)
p4.Transparency=0.7
p4:Destroy()
end
p5=Targ:findFirstChild("Left Leg")
if p5~=nil then
p5.BrickColor=BrickColor.new(26)
p5.Transparency=0.1
wait(0.1)
p5.Transparency=0.2
wait(0.1)
p5.Transparency=0.3
wait(0.1)
p5.Transparency=0.4
wait(0.1)
p5.Transparency=0.5
wait(0.1)
p5.Transparency=0.6
wait(0.1)
p5.Transparency=0.7
p5:Destroy()
end
p6=Targ:findFirstChild("Right Leg")
if p6~=nil then
p6.BrickColor=BrickColor.new(26)
p6.Transparency=0.1
wait(0.1)
p6.Transparency=0.2
wait(0.1)
p6.Transparency=0.3
wait(0.1)
p6.Transparency=0.4
wait(0.1)
p6.Transparency=0.5
wait(0.1)
p6.Transparency=0.6
wait(0.1)
p6.Transparency=0.7
p6:Destroy()
end
end
end
function onSelected(mouse) 
mouse.KeyDown:connect(onKeyDown) 
end 
 
script.Parent.Selected:connect(onSelected)