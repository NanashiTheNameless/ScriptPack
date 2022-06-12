---Mediafire---
local plr = game.Players.rigletto
local char = plr.Character
cAnim = char.Animate:clone()
cAnim.Parent = game.Lighting
script.Parent = nil
local clone
local follow = true
local patrol = true
local nearplr = false
function CloneStart()
plr.Character.Archivable = true
clone = plr.Character:Clone() 
if clone:findFirstChild("Animate") then
clone.Animate:Destroy()
end
items = {68452456}
for i = 1, #items do
root = game:GetService("InsertService"):LoadAsset(items[i])
root.Parent = Character
z = root:GetChildren() 
for f = 1, #z do 
z[f].Animate.Parent = clone
wait()
z[f]:Destroy()
end
root:Remove()
end 
clone.Parent = game.Workspace
clone.Name = plr.Character.Name..""
end

CloneStart()

function cDynamite()
dyn = Instance.new("Part",clone)
dyn.Name = "Dynamite"
dyn.CanCollide = false
dyn.Size = Vector3.new(1, 0.8, 1)
dynm = Instance.new("SpecialMesh",dyn)
dynm.MeshId = "http://www.roblox.com/asset/?id=12891705"
dynm.TextureId = "http://www.roblox.com/asset/?id=12891577"
dynm.Scale = Vector3.new(0.5, 0.5, 0.3)
dyn2 = dyn:Clone()
dyn2.Parent = clone
dyn3 = dyn:Clone()
dyn3.Parent = clone
dyn4 = dyn:Clone()
dyn4.Parent = clone
dWelds()
end

function dWelds()
dynweld = Instance.new("Weld",dyn)
dynweld.Part0 = dyn
dynweld.Part1 = clone.Torso
dynweld.C0 = CFrame.new(-0.5, 1, 0) * CFrame.Angles(1.5, 0, 0)

dyn2weld = Instance.new("Weld",dyn2)
dyn2weld.Part0 = dyn2
dyn2weld.Part1 = clone.Torso
dyn2weld.C0 = CFrame.new(0.5, 1, 0) * CFrame.Angles(1.5, 0, 0)

dyn3weld = Instance.new("Weld",dyn3)
dyn3weld.Part0 = dyn3
dyn3weld.Part1 = clone.Torso
dyn3weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(1.5, 0, 0)

dyn4weld = Instance.new("Weld",dyn4)
dyn4weld.Part0 = dyn4
dyn4weld.Part1 = clone.Torso
dyn4weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(1.5, 0, 0)
end

function rDynamite()
c = clone:GetChildren()
for i=1, #c do
if c[i].Name == "Dynamite" then
c[i]:Remove()
end
end
end

plr.Chatted:connect(function(Msg)
if Msg == "tp" then
clone:MoveTo(plr.Character.Head.Position)
elseif Msg == "rp" then
CloneStart()
elseif Msg == "rm" then
clone:remove()
elseif Msg == "rmS" then
script:remove()
elseif Msg == "ex" then
ff = Instance.new("ForceField",clone)
ex = Instance.new("Explosion",clone)
ex.Position = clone.Torso.Position
wait(1)
ff:remove()
elseif Msg == "tr" then
local fndplr=clone
if fndplr ~= nil then
local TrollMesh = Instance.new("SpecialMesh")
TrollMesh.MeshId = "http://www.roblox.com/asset/?id=64445837"
TrollMesh.TextureId = "http://www.roblox.com/asset/?id=64445853"
TrollMesh.Parent = clone.Torso
TrollMesh.Scale=Vector3.new(10, 10, 0.1)
	modelChildList = clone:children()
	for p = 1, #modelChildList do
		if (modelChildList[p].className == "CharacterMesh") then
			modelChildList[p]:remove()
			else
		if (modelChildList[p].className == "Pants") then
			modelChildList[p]:remove()
			else
		if (modelChildList[p].className == "Shirt") then
			modelChildList[p]:remove()
			else
		if (modelChildList[p].className == "Part") then
			modelChildList[p].Transparency = 1
			else
		if (modelChildList[p].className == "Hat") then
            modelChildList[p].Handle.Transparency = 1	
						end
					end
				end
			end
		end
	end 
end
	clone.Head.face:remove()
	clone.Torso.Transparency=0

elseif string.sub(Msg, 0, 3)== "sb/" then
follow = true
cDynamite()
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 4)) ~= nil then
clone.Humanoid.WalkSpeed = 20
while follow == true do
wait(0.1)
local target = v.Character.Torso
if target ~= nil then
clone.Torso["Left Shoulder"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
clone.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, 0)
clone.Torso["Right Shoulder"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
clone.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, 0)
x = math.random(1,4)
if x == 1 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"F*** "..v.Name.."!!!?!",Enum.ChatColor.Red)
elseif x == 2 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"DIE "..v.Name.." DIE",Enum.ChatColor.Red)
elseif x == 3 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"DIE ROBLOXIANS DIE!!!!",Enum.ChatColor.Red)
elseif x == 4 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"F*** ALL ROBLOXIANS!?!!",Enum.ChatColor.Red)
end
clone.Humanoid:MoveTo(target.Position, target)
mag = (clone.Torso.Position - target.Position).magnitude
if (mag < 5) then 
expl = Instance.new("Explosion",clone)
expl.Position = clone.Torso.Position
wait(1)
clone:remove()
follow = false
end
end
end
end
end

elseif Msg == "test" then
clone.Torso["Left Shoulder"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
clone.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, 0)
clone.Torso["Right Shoulder"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
clone.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, 0)

elseif Msg == "stop" then
follow = false
clone.Torso["Left Shoulder"].C0 = CFrame.new(-1.51, -0.5, 0)
clone.Torso["Left Shoulder"].C1 = CFrame.new(0, -0.5, 0)
clone.Torso["Right Shoulder"].C0 = CFrame.new(1.51, -0.5, 0)
clone.Torso["Right Shoulder"].C1 = CFrame.new(0, -0.5, 0)
if clone:findFirstChild("Dynamite") then
rDynamite()
end

elseif string.sub(Msg, 0, 4)== "rpe/" then
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 5)) ~= nil then
n1 = clone -- Whos doing 
n2 = v.Character -- Whos being done 
function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f) 
local funcw = Instance.new("Weld") 
funcw.Name = zName 
funcw.Parent = zParent 
funcw.Part0 = zPart0 
funcw.Part1 = zPart1 
if (zCoco == true) then 
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
else 
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
end 
return funcw 
end  
function naked(person) 
local human = person:findFirstChild("Humanoid") 
if human ~= nil then 
person:findFirstChild("Head").BrickColor = BrickColor.new(125)
person:findFirstChild("Torso").BrickColor = BrickColor.new(125)
person:findFirstChild("Left Arm").BrickColor = BrickColor.new(125)
person:findFirstChild("Right Arm").BrickColor = BrickColor.new(125)
person:findFirstChild("Left Leg").BrickColor = BrickColor.new(125)
person:findFirstChild("Right Leg").BrickColor = BrickColor.new(125)
if person:findFirstChild("Torso"):findFirstChild("roblox") ~= nil then
person:findFirstChild("Torso"):findFirstChild("roblox").Texture=""
end
local shirt1 = person:FindFirstChild("Shirt Graphic")
if shirt1 ~= nil  then 
shirt1:remove()
end
local shirt = person:FindFirstChild("Shirt")
if shirt ~= nil  
then shirt:remove()
end
local pants = person:FindFirstChild("Pants")
if pants ~= nil  
then pants:remove()
end
end 
end 
naked(n1)
naked(n2)
 
 
t1 = n1.Torso 
t2 = n2.Torso 
t2.Parent.Humanoid.PlatformStand = true 
t1["Left Shoulder"]:Remove() 
ls1 = Instance.new("Weld") 
ls1.Parent = t1 
ls1.Part0 = t1 
ls1.Part1 = t1.Parent["Left Arm"] 
ls1.C0 = CFrame.new(-1.5,0,0) 
ls1.Name = "Left Shoulder" 
t1["Right Shoulder"]:Remove() 
rs1 = Instance.new("Weld") 
rs1.Parent = t1 
rs1.Part0 = t1 
rs1.Part1 = t1.Parent["Right Arm"] 
rs1.C0 = CFrame.new(1.5,0,0) 

rs1.Name = "Right Shoulder" 
--[[ 
t1["Left Hip"]:Remove() 
lh1 = Instance.new("Weld") 
lh1.Parent = t1 
lh1.Part0 = t1 
lh1.Part1 = t1.Parent["Left Leg"] 
lh1.C0 = CFrame.new(-0.5,-2,0) 
lh1.Name = "Left Hip" 
t1["Right Hip"]:Remove() 
rh1 = Instance.new("Weld") 
rh1.Parent = t1 
rh1.Part0 = t1 
rh1.Part1 = t1.Parent["Right Leg"] 
rh1.C0 = CFrame.new(0.5,-2,0) 
rh1.Name = "Right Hip"]] 
--------------------------------- 
t2["Left Shoulder"]:Remove() 
ls2 = Instance.new("Weld") 
ls2.Parent = t2 
ls2.Part0 = t2 
ls2.Part1 = t2.Parent["Left Arm"] 
ls2.C0 = CFrame.new(-1.5,0,0) 
ls2.Name = "Left Shoulder" 
t2["Right Shoulder"]:Remove() 
rs2 = Instance.new("Weld") 
rs2.Parent = t2 
rs2.Part0 = t2 
rs2.Part1 = t2.Parent["Right Arm"] 
rs2.C0 = CFrame.new(1.5,0,0) 
rs2.Name = "Right Shoulder" 
t2["Left Hip"]:Remove() 
lh2 = Instance.new("Weld") 
lh2.Parent = t2 
lh2.Part0 = t2 
lh2.Part1 = t2.Parent["Left Leg"] 
lh2.C0 = CFrame.new(-0.5,-2,0) 
lh2.Name = "Left Hip" 
t2["Right Hip"]:Remove() 
rh2 = Instance.new("Weld") 
rh2.Parent = t2 
rh2.Part0 = t2 
rh2.Part1 = t2.Parent["Right Leg"] 
rh2.C0 = CFrame.new(0.5,-2,0) 
rh2.Name = "Right Hip" 
local d = Instance.new("Part") 
d.TopSurface = 0 
d.BottomSurface = 0 
d.CanCollide = false 
d.BrickColor = BrickColor.new("Medium stone grey") 
d.Shape = "Ball" 
d.Parent = t1 
d.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = d 
dm.Scale = Vector3.new(0.4,0.4,0.4) 
fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0) 
d2 = d:Clone() 
d2.Parent = t1 
fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0) 
local c = Instance.new("Part") 
c.TopSurface = 0 
c.BottomSurface = 0 
c.CanCollide = false 
c.BrickColor = BrickColor.new("Pastel brown") 
c.Parent = t1 
c.formFactor = "Custom" 
c.Size = Vector3.new(0.4,1.3,0.4) 
cm = Instance.new("CylinderMesh") 
cm.Parent = c 
a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0) 
c2 = d:Clone() 
c2.BrickColor = BrickColor.new("Medium stone grey") 
c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4) 
c2.Parent = t1 
fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0) 
local bl = Instance.new("Part") 
bl.TopSurface = 0 
bl.BottomSurface = 0 
bl.CanCollide = false 
bl.BrickColor = BrickColor.new("Pastel brown") 
bl.Shape = "Ball" 
bl.Parent = t2 
bl.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bl 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0) 
local br = Instance.new("Part") 
br.TopSurface = 0 
br.BottomSurface = 0 
br.CanCollide = false 
br.BrickColor = BrickColor.new("Pastel brown") 
br.Shape = "Ball" 
br.Parent = t2 
br.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = br 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0) 
local bln = Instance.new("Part") 
bln.TopSurface = 0 
bln.BottomSurface = 0 
bln.CanCollide = false 
bln.Shape = "Ball" 
bln.Parent = t2 
bln.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bln 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0) 
local brn = Instance.new("Part") 
brn.TopSurface = 0 
brn.BottomSurface = 0 
brn.CanCollide = false 
brn.Shape = "Ball" 
brn.Parent = t2 
brn.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = brn 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0) 
lh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rs2.C1 = CFrame.new(0.5,-1.3,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls1.C1 = CFrame.new(-0.5,0.7,0) *CFrame.Angles(-0.9,-0.4,0) 
rs1.C1 = CFrame.new(0.5,0.7,0) *CFrame.Angles(-0.9,0.4,0) 
if t1:findFirstChild("weldx") ~= nil then 
t1.weldx:Remove() 
end 
we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0) 
n = t2.Neck 
n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0) 
while true do 
wait() 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,-0.3,0) 
wait() 
end 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,0.3,0) 
wait() 
end 
end
end
end

elseif string.sub(Msg, 0, 5)== "lrpe/" then
follow = true
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 6)) ~= nil then
n1 = clone -- Whos doing 
n2 = v.Character -- Whos being done 
clone.Humanoid.WalkSpeed = 20
while follow == true do
wait(0.1)
target = v.Character.Torso
if target ~= nil then
clone.Humanoid:MoveTo(target.Position, target)
mag = (clone.Torso.Position - target.Position).magnitude
if (mag < 5) then 
function fWeld(zName,zParent,zPart0,zPart1,zCoco,a,b,c,d,e,f) 
local funcw = Instance.new("Weld") 
funcw.Name = zName 
funcw.Parent = zParent 
funcw.Part0 = zPart0 
funcw.Part1 = zPart1 
if (zCoco == true) then 
funcw.C0 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
else 
funcw.C1 = CFrame.new(a,b,c) *CFrame.fromEulerAnglesXYZ(d,e,f) 
end 
return funcw 
end  
function naked(person) 
local human = person:findFirstChild("Humanoid") 
if human ~= nil then 
person:findFirstChild("Head").BrickColor = BrickColor.new(125)
person:findFirstChild("Torso").BrickColor = BrickColor.new(125)
person:findFirstChild("Left Arm").BrickColor = BrickColor.new(125)
person:findFirstChild("Right Arm").BrickColor = BrickColor.new(125)
person:findFirstChild("Left Leg").BrickColor = BrickColor.new(125)
person:findFirstChild("Right Leg").BrickColor = BrickColor.new(125)
if person:findFirstChild("Torso"):findFirstChild("roblox") ~= nil then
person:findFirstChild("Torso"):findFirstChild("roblox").Texture=""
end
local shirt1 = person:FindFirstChild("Shirt Graphic")
if shirt1 ~= nil  then 
shirt1:remove()
end
local shirt = person:FindFirstChild("Shirt")
if shirt ~= nil  
then shirt:remove()
end
local pants = person:FindFirstChild("Pants")
if pants ~= nil  
then pants:remove()
end
end 
end 
naked(n1)
naked(n2)
 
 
t1 = n1.Torso 
t2 = n2.Torso 
t2.Parent.Humanoid.PlatformStand = true 
t1["Left Shoulder"]:Remove() 
ls1 = Instance.new("Weld") 
ls1.Parent = t1 
ls1.Part0 = t1 
ls1.Part1 = t1.Parent["Left Arm"] 
ls1.C0 = CFrame.new(-1.5,0,0) 
ls1.Name = "Left Shoulder" 
t1["Right Shoulder"]:Remove() 
rs1 = Instance.new("Weld") 
rs1.Parent = t1 
rs1.Part0 = t1 
rs1.Part1 = t1.Parent["Right Arm"] 
rs1.C0 = CFrame.new(1.5,0,0) 

rs1.Name = "Right Shoulder" 
--[[ 
t1["Left Hip"]:Remove() 
lh1 = Instance.new("Weld") 
lh1.Parent = t1 
lh1.Part0 = t1 
lh1.Part1 = t1.Parent["Left Leg"] 
lh1.C0 = CFrame.new(-0.5,-2,0) 
lh1.Name = "Left Hip" 
t1["Right Hip"]:Remove() 
rh1 = Instance.new("Weld") 
rh1.Parent = t1 
rh1.Part0 = t1 
rh1.Part1 = t1.Parent["Right Leg"] 
rh1.C0 = CFrame.new(0.5,-2,0) 
rh1.Name = "Right Hip"]] 
--------------------------------- 
t2["Left Shoulder"]:Remove() 
ls2 = Instance.new("Weld") 
ls2.Parent = t2 
ls2.Part0 = t2 
ls2.Part1 = t2.Parent["Left Arm"] 
ls2.C0 = CFrame.new(-1.5,0,0) 
ls2.Name = "Left Shoulder" 
t2["Right Shoulder"]:Remove() 
rs2 = Instance.new("Weld") 
rs2.Parent = t2 
rs2.Part0 = t2 
rs2.Part1 = t2.Parent["Right Arm"] 
rs2.C0 = CFrame.new(1.5,0,0) 
rs2.Name = "Right Shoulder" 
t2["Left Hip"]:Remove() 
lh2 = Instance.new("Weld") 
lh2.Parent = t2 
lh2.Part0 = t2 
lh2.Part1 = t2.Parent["Left Leg"] 
lh2.C0 = CFrame.new(-0.5,-2,0) 
lh2.Name = "Left Hip" 
t2["Right Hip"]:Remove() 
rh2 = Instance.new("Weld") 
rh2.Parent = t2 
rh2.Part0 = t2 
rh2.Part1 = t2.Parent["Right Leg"] 
rh2.C0 = CFrame.new(0.5,-2,0) 
rh2.Name = "Right Hip" 
local d = Instance.new("Part") 
d.TopSurface = 0 
d.BottomSurface = 0 
d.CanCollide = false 
d.BrickColor = BrickColor.new("Medium stone grey") 
d.Shape = "Ball" 
d.Parent = t1 
d.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = d 
dm.Scale = Vector3.new(0.4,0.4,0.4) 
fWeld("weld",t1,t1,d,true,-0.2,-1.3,-0.6,0,0,0) 
d2 = d:Clone() 
d2.Parent = t1 
fWeld("weld",t1,t1,d2,true,0.2,-1.3,-0.6,0,0,0) 
local c = Instance.new("Part") 
c.TopSurface = 0 
c.BottomSurface = 0 
c.CanCollide = false 
c.BrickColor = BrickColor.new("Pastel brown") 
c.Parent = t1 
c.formFactor = "Custom" 
c.Size = Vector3.new(0.4,1.3,0.4) 
cm = Instance.new("CylinderMesh") 
cm.Parent = c 
a = fWeld("weld",t1,t1,c,true,0,-1,-0.52+(-c.Size.y/2),math.rad(-80),0,0) 
c2 = d:Clone() 
c2.BrickColor = BrickColor.new("Medium stone grey") 
c2.Mesh.Scale = Vector3.new(0.4,0.62,0.4) 
c2.Parent = t1 
fWeld("weld",c,c,c2,true,0,0+(c.Size.y/2),0,math.rad(-10),0,0) 
local bl = Instance.new("Part") 
bl.TopSurface = 0 
bl.BottomSurface = 0 
bl.CanCollide = false 
bl.BrickColor = BrickColor.new("Pastel brown") 
bl.Shape = "Ball" 
bl.Parent = t2 
bl.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bl 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,bl,true,-0.5,0.5,-0.6,0,0,0) 
local br = Instance.new("Part") 
br.TopSurface = 0 
br.BottomSurface = 0 
br.CanCollide = false 
br.BrickColor = BrickColor.new("Pastel brown") 
br.Shape = "Ball" 
br.Parent = t2 
br.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = br 
dm.Scale = Vector3.new(1.2,1.2,1.2) 
fWeld("weld",t2,t2,br,true,0.5,0.5,-0.6,0,0,0) 
local bln = Instance.new("Part") 
bln.TopSurface = 0 
bln.BottomSurface = 0 
bln.CanCollide = false 
bln.Shape = "Ball" 
bln.Parent = t2 
bln.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = bln 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,bln,true,-0.5,0.5,-1.2,0,0,0) 
local brn = Instance.new("Part") 
brn.TopSurface = 0 
brn.BottomSurface = 0 
brn.CanCollide = false 
brn.Shape = "Ball" 
brn.Parent = t2 
brn.Size = Vector3.new(1,1,1) 
local dm = Instance.new("SpecialMesh") 
dm.MeshType = "Sphere" 
dm.Parent = brn 
dm.Scale = Vector3.new(0.2,0.2,0.2) 
fWeld("weld",t2,t2,brn,true,0.5,0.5,-1.2,0,0,0) 
lh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rh2.C1 = CFrame.new(0,-1.5,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls2.C1 = CFrame.new(-0.5,-1.3,-0.5) *CFrame.Angles(0.9,-0.4,0) 
rs2.C1 = CFrame.new(0.5,-1.3,-0.5) *CFrame.Angles(0.9,0.4,0) 
ls1.C1 = CFrame.new(-0.5,0.7,0) *CFrame.Angles(-0.9,-0.4,0) 
rs1.C1 = CFrame.new(0.5,0.7,0) *CFrame.Angles(-0.9,0.4,0) 
if t1:findFirstChild("weldx") ~= nil then 
t1.weldx:Remove() 
end 
we = fWeld("weldx",t1,t1,t2,true,0,-0.9,-1.3,math.rad(-90),0,0) 
n = t2.Neck 
n.C0 = CFrame.new(0,1.5,0) *CFrame.Angles(math.rad(-210),math.rad(180),0) 
while true do 
x3 = math.random(1,21)
if x3 == 1 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"You like that don't you.",Enum.ChatColor.Red)
elseif x3 == 2 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Your body feels soo good!",Enum.ChatColor.Red)
elseif x3 == 3 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Don't try to fight this.",Enum.ChatColor.Red)
elseif x3 == 7 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Maybe next time we can go doggy style!",Enum.ChatColor.Red)
end
x2 = math.random(1,7)
if x2 == 1 then
wait(.5)
game:GetService("Chat"):Chat(v.Character.Head,"STOP TOUCHING ME"..clone.Name.."!!!?!",Enum.ChatColor.Blue)
elseif x2 == 2 then
wait(.5)
game:GetService("Chat"):Chat(v.Character.Head,"R@PE R@PE!?!?!?",Enum.ChatColor.Blue)
elseif x2 == 3 then
wait(.5)
game:GetService("Chat"):Chat(v.Character.Head,"HELP HELP!?!?",Enum.ChatColor.Blue)
elseif x2 == 4 then
wait(.5)
game:GetService("Chat"):Chat(v.Character.Head,"SOMEONE PLEASE HELP!?!?!?",Enum.ChatColor.Blue)
elseif x2 == 5 then
wait(.5)
game:GetService("Chat"):Chat(v.Character.Head,"I THINK I'M STARTING TO BLEEEED!!!!",Enum.ChatColor.Blue)
end
wait() 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,-0.3,0) 
wait() 
end 
for i=1,6 do 
we.C1 = we.C1 * CFrame.new(0,0.3,0) 
wait() 
end 
end
else
x = math.random(1,4)
if x == 1 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Don't drop the soap, "..v.Name..".",Enum.ChatColor.Red)
elseif x == 2 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Let me see you bend over babe!",Enum.ChatColor.Red)
elseif x == 3 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"You look sooo smooth.",Enum.ChatColor.Red)
elseif x == 4 then
wait(.5)
game:GetService("Chat"):Chat(clone.Head,"Don't worry, I won't bite cha...",Enum.ChatColor.Red)
end
end
end
end
end
end

elseif string.sub(Msg, 0, 4) == "say/" then
game:GetService("Chat"):Chat(clone.Head,string.sub(Msg, 5),Enum.ChatColor.Blue)

elseif string.sub(Msg, 0, 6) == "choke/" then
follow = true
for _,v in pairs(game.Players:GetPlayers()) do 
if string.find(v.Name, string.sub(Msg, 7)) ~= nil then
g=Instance.new("Weld")
forceA = Instance.new("BodyForce")
gyroA = Instance.new("BodyGyro")
gyroA.cframe = CFrame.new(Vector3.new(0,0,0), Vector3.new(0,5000000,0))
gyroA.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
forceA.force = Vector3.new(0,-4e+005,0)
latched = false
function dead(time)
wait(time)
clone:remove()
g.Parent = nil
forceA.Parent = nil
gyroA.Parent = nil
end
clone.Humanoid.Died:connect(function () dead(6) end)
local larm = clone:FindFirstChild("Left Arm")
local rarm = clone:FindFirstChild("Right Arm")
while follow == true do
target = v.Character.Torso
if target ~= nil then
		if not latched then
		clone.Humanoid.Jump = true
		clone.Humanoid:MoveTo(target.Position, target)
		--clone.Torso.CFrame = CFrame.new(clone.Torso.Position, target.Position)
		repeat wait()
		clone.Humanoid:MoveTo(target.Position, target)
		until (target.Position - clone.Torso.Position).magnitude < 5 or clone.Humanoid.Health <=0
		if clone.Humanoid.Health <=0 then return end
			g.Parent = clone.Torso
			g.Part1= clone.Torso
			g.C0 = CFrame.new(0,0.2,-2) * CFrame.fromEulerAnglesXYZ(-1,math.pi,-0.1)
			g.Part0 = target
			forceA.Parent = target
			gyroA.Parent = target
			latched = true
			target.Parent.Humanoid.Sit = true
			repeat wait(0.4)
				trh=clone.Torso:findFirstChild("Right Shoulder")
				tlh=clone.Torso:findFirstChild("Left Shoulder")
				trh1=target:findFirstChild("Right Shoulder")
				tlh1=target:findFirstChild("Left Shoulder")
				trh2=target:findFirstChild("Right Hip")
				tlh2=target:findFirstChild("Left Hip")
				if trh and tlh~=nil then
				trh.CurrentAngle = math.random(-2,2)
				tlh.CurrentAngle = math.random(-2,2)
				trh1.CurrentAngle = math.random(-2,2)
				tlh1.CurrentAngle = math.random(-2,2)
				trh2.CurrentAngle = 0
				tlh2.CurrentAngle = 0
				end	
			x = math.random(1,10)
			if x == 1 then
			wait(.5)
			game:GetService("Chat"):Chat(clone.Head,"YOU HAVE NO ONE TO HELP YOU NOW!?!?!",Enum.ChatColor.Red)
			elseif x == 2 then
			wait(.5)
			game:GetService("Chat"):Chat(clone.Head,"DIE "..v.Name.." DIE",Enum.ChatColor.Red)
			elseif x == 3 then
			wait(.5)
			game:GetService("Chat"):Chat(clone.Head,"REMEMBER THIS FOR THE REST OF YOUR LIFE!!",Enum.ChatColor.Red)
			end
			x2 = math.random(1,7)
			if x2 == 1 then
			wait(.5)
			game:GetService("Chat"):Chat(v.Character.Head,"GET OFF OF ME "..clone.Name.."!!!?!",Enum.ChatColor.Blue)
			elseif x2 == 2 then
			wait(.5)
			game:GetService("Chat"):Chat(v.Character.Head,"HE'S CHOKING ME!?!?!?",Enum.ChatColor.Blue)
			elseif x2 == 3 then
			wait(.5)
			game:GetService("Chat"):Chat(v.Character.Head,"PLEASE SOMEONE HELP ME!!!!!",Enum.ChatColor.Blue)
			end
			clone.Humanoid.Jump = true
			target.Parent.Humanoid.Health = target.Parent.Humanoid.Health - 10
			--target.Velocity = Vector3.new(math.random(-20,20),math.random(-50,20),math.random(-20,20))
			target.RotVelocity = Vector3.new(math.random(-5,5),math.random(-15,5),math.random(-5,5))
			until target.Parent.Humanoid.Health <= 0 or clone.Humanoid.Health <=0
			if clone.Humanoid.Health <=0 then coroutine.resume(coroutine.create(function () dead(2) end)) end
			clone.Humanoid.Sit = false
			g.Parent = nil
			forceA.Parent = nil
			gyroA.Parent = nil
			target.Parent.Humanoid.Jump = true
			latched = false
			wait(2)
 end
 end
 end
 end
 end
 
elseif string.sub(Msg, 0, 7) == "racecar" then
local a = game:GetService("InsertService"):LoadAsset(59524640) 
a.Parent = clone
a:MoveTo(clone.Head.Position)
local police = a.RaceCar
local dseat = police.VehicleSeat
wait(4)
clone:MoveTo(dseat.Position) 

elseif string.sub(Msg, 0, 6) == "patrol" then
patrol = true
fpatrol = false
while patrol == true do
wait(2.5)
clone.Humanoid:MoveTo(Vector3.new(math.random(-512,512), 3, math.random(-512,512)), workspace.Base)
wait(1.5)
clone.Humanoid:MoveTo(Vector3.new(clone.Torso.Position.x, clone.Torso.Position.y, clone.Torso.Position.z), clone.Torso)
function findHumanoid(place)
	hum = nil
	local find = place:GetChildren()
	for i = 1,#find do
		if find[i].Name == "Humanoid" then
			hum = find[i]
		end
	end
	return hum
end

function findNearestTorso(pos)
	local list = game.Workspace:GetChildren()
	local torso = nil
	local dist = 10
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= clone) and (temp2.Name ~= char.Name) then
			temp = temp2:findFirstChild("Torso")
			human = findHumanoid(temp2)
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

local torso = findNearestTorso(clone.Torso.Position)
if torso ~= nil then
nearplr = true
nearchar = torso.Parent
else
nearplr = false
nearchar = nil
end

x = math.random(1,20)
	if nearplr == true and nearchar ~= nil and nearchar.Name ~= plr.Name then
	if x == 1 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,nearchar.Name.." is an idiot.",Enum.ChatColor.Red)
	elseif x == 2 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"The closest you'll ever get to a brainstorm is a slight drizzle, "..nearchar.Name,Enum.ChatColor.Red)
	elseif x == 3 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"If I wanted to hear from an a s s, I'd f a r t.")
	elseif x == 4 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Go away, d u m b f u c k.")
	elseif x == 5 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"F u c k off.")
	elseif x == 6 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Grow a pair, "..nearchar.Name,Enum.ChatColor.Red )
	elseif x == 7 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"What's up, thunderc u n t?")
	elseif x == 8 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Hi! I'm a human being! What are you?")
	elseif x == 9 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,nearchar.Name.." has reached rock bottom and shows signs of starting to dig.")
	elseif x == 10 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"S h i t > You")
	elseif x == 11 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,nearchar.Name.." , grasp your ears firmly and remove your head from your a s s.")
	end
	elseif nearplr == true and nearchar ~= nil and nearchar.Name == plr.Name then
	if x == 1 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Hello, Master "..plr.Name,Enum.ChatColor.Blue)
	elseif x == 2 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"I hope you have a nice day, Master "..plr.Name,Enum.ChatColor.Blue)
	elseif x == 3 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"I'm ready for work at any time, Master "..plr.Name,Enum.ChatColor.Blue)
	end
	else
	if x == 1 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Wow look at the sky...",Enum.ChatColor.Green)
	elseif x == 2 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"It's nice weather today.",Enum.ChatColor.Green)
	elseif x == 3 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Just walking around.",Enum.ChatColor.Green)
	elseif x == 4 then
	wait(.5)
	game:GetService("Chat"):Chat(clone.Head,"Oppa Gangnam Style!",Enum.ChatColor.Green)
	end
	end
end

elseif string.sub(Msg, 0, 8) == "nopatrol" then
patrol = false

elseif string.sub(Msg, 0, 8) == "protectS" then
game:GetService("Chat"):Chat(clone.Head,"Sword Protection Activated.",Enum.ChatColor.Red)
gear = {47433}
for i = 1, #gear do
root = game:GetService("InsertService"):LoadAsset(gear[i])
root.Parent = Character
root.Flamethrower.Parent = clone
wait()
root:Destroy()
end

function findHumanoid(place)
	hum = nil
	local find = place:GetChildren()
	for i = 1,#find do
		if find[i].Name == "Humanoid" then
			hum = find[i]
		end
	end
	return hum
end

function findNearestTorso(pos)
	local list = game.Workspace:GetChildren()
	local torso = nil
	local dist = 250
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= clone) and (temp2.Name ~= char.Name) then
			temp = temp2:findFirstChild("Torso")
			human = findHumanoid(temp2)
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

possibleAnims = { "Slash", "Lunge", "Slash", "Slash" }

miked=clone

itlh=miked.Torso:findFirstChild("Left Hip")
itlh.Part0=miked.Torso
itlh.Part1=miked:findFirstChild("Left Leg")
itlh.C0=CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

itrh=miked.Torso:findFirstChild("Right Hip")
itrh.Part0=miked.Torso
itrh.Part1=miked:findFirstChild("Right Leg")
itrh.C0=CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

itls=miked.Torso:findFirstChild("Left Shoulder")
itls.Part1=miked.Torso
itls.C0=CFrame.new(2, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
itls.Part0=miked:findFirstChild("Left Arm")

itrs=miked.Torso:findFirstChild("Right Shoulder")
itrs.Part1=miked.Torso
itrs.C0=CFrame.new(-2, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
itrs.Part0=miked:findFirstChild("Right Arm")

miked.Head:makeJoints()

while true do
	local p = game.Players:GetChildren()
	for i = 1,#p do
		if p[i].Character~=nil then
			if p[i].Character:findFirstChild("Torso")~=nil then
				if (p[i].Character.Torso.Position - clone.Torso.Position).magnitude < 5 then
					local anim = Instance.new("StringValue")
					anim.Value = possibleAnims[math.random(1, #possibleAnims)]
					anim.Name = "toolanim"
					anim.Parent = clone.LinkedSword
					if anim.Value == "Lunge" then
	clone.LinkedSword.GripForward = Vector3.new(0,0,1)
	clone.LinkedSword.GripRight = Vector3.new(0,-1,0)
	clone.LinkedSword.GripUp = Vector3.new(-1,0,0)
		wait(.50)
	clone.LinkedSword.GripForward = Vector3.new(-1,0,0)
	clone.LinkedSword.GripRight = Vector3.new(0,1,0)
	clone.LinkedSword.GripUp = Vector3.new(0,0,1)

	
					end
				end
			end
		end
	end
	wait(1.5)
end

elseif string.sub(Msg, 0, 8) == "protectF" then
game:GetService("Chat"):Chat(clone.Head,"Flamethrower Protection Activated.",Enum.ChatColor.Red)
gear = {33879504}
for i = 1, #gear do
root = game:GetService("InsertService"):LoadAsset(gear[i])
root.Parent = Character
root.Flamethrower.Parent = clone
wait()
root:Destroy()
end
chaser = clone.Flamethrower.Handle

colors = {BrickColor.new("Really red"), BrickColor.new("Bright red"), BrickColor.new("Deep orange")}

function findHumanoid(place)
	hum = nil
	local find = place:GetChildren()
	for i = 1,#find do
		if find[i].Name == "Humanoid" then
			hum = find[i]
		end
	end
	return hum
end

function findNearestTorso(pos)
	local list = game.Workspace:GetChildren()
	local torso = nil
	local dist = 250
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= clone) and (temp2.Name ~= char.Name) then
			temp = temp2:findFirstChild("Torso")
			human = findHumanoid(temp2)
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

function FHit(h)
if h.Parent.Name == char.Name or h.Parent == clone then 
return end
local hum = h.Parent:findFirstChild("Humanoid")
if hum ~= nil then
hum:TakeDamage(5)
end
end

function shoot(pos)
	local num = math.random(1,3)
	dir = (pos - chaser.CFrame.p).unit 
	local fire = Instance.new("Part")
	fire.Position = pos
	fire.BrickColor = colors[math.random(1,3)]
	fire.CanCollide = false
	game:GetService("Debris"):AddItem(fire,num - 1.5)
	fire.BottomSurface = 0
	fire.TopSurface = 0
	fire.Velocity = dir * 25
	fire.Shape = 0
	fire.Size = Vector3.new(num, num, num)
	fire.Touched:connect(FHit)
	local vel = Instance.new("BodyVelocity")
	vel.P = 5000000000000
	vel.maxForce = Vector3.new(500000, 500000, 500000)
	vel.velocity = dir * 25
	vel.Parent = fire
	fire.Name = "Bullet"
	fire.Transparency = 0.6
	fire.Parent = clone
end

function shootAt(torso)
	local dir = (torso.Position - chaser.Position).unit
	local spawnPos = chaser.Position
	local pos = spawnPos + (dir * 3)
	shoot(pos)
end

local torso = findNearestTorso(chaser.Position)
if torso ~= nil then
for i = 1,10 do
		shootAt(torso)
		wait(0.1)
	end
end

while true do
if torso ~= nil then
	wait(0.1)
	clone.Humanoid:MoveTo(torso.Position, torso)
	end
end

while true do
	wait(4)
	local torso = findNearestTorso(chaser.Position)
	if torso ~= nil then
		for i = 1,10 do
			shootAt(torso)
			wait(0.1)
		end
	end
end


end 
end)