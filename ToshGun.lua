col = Color3.new(0,0,100) 
s = Vector3.new(5,50,5) 
me = script.Parent.Parent 
char = me.Character 
torso = char.Torso 

-- uses Vector3 values 

function laser(to,from) -- MUST BE VECTOR3 
local las=Instance.new("Part",Workspace) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Bright red") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((to+from)/2,from)*CFrame.Angles(math.rad(90),0,0) 
game.Debris:AddItem(las,0.5) 
local msh=Instance.new("SpecialMesh",las) 
msh.Scale=Vector3.new(0.1,(to-from).magnitude,0.1) 
return las 
end 


ra = Instance.new("Weld") 
ra.Part0 = nil
ra.Part1 = char["Right Arm"]
ra.Name = "AW"
ra.Parent = char
ra.C0 = CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)

la = Instance.new("Weld") 
la.Part0 = nil
la.Part1 = char["Left Arm"]
la.Name = "AW"
la.Parent = char
la.C0 = CFrame.new(-1.5,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)

p1 = Instance.new("Part",char)
p1.Size = Vector3.new(1,1,1)
p1.TopSurface = "Smooth"
p1.Position = torso.Position
p1.BrickColor = BrickColor.new("Really black")
p1.BottomSurface = "Smooth"
m = Instance.new("SpecialMesh",p1)
m.MeshId = "rbxasset://fonts/PaintballGun.mesh"
m.Scale = Vector3.new(1,1,1)

qa = Instance.new("Weld") 
qa.Part0 = torso
qa.Part1 = p1
qa.Name = "AW"
qa.Parent = char
qa.C0 = CFrame.new(0,1,-3)*CFrame.fromEulerAnglesXYZ(1.55,0,0)

p1 = Instance.new("Part",char)
p1.Size = Vector3.new(1,1,1)
p1.Position = torso.Position
p1.TopSurface = "Smooth"
p1.Transparency = 1
p1.BrickColor = BrickColor.new("Really black")
p1.BottomSurface = "Smooth"

qa = Instance.new("Weld") 
qa.Part0 = torso
qa.Part1 = p1
qa.Name = "AW"
qa.Parent = char
qa.C0 = CFrame.new(0,1.05,-5.5)*CFrame.fromEulerAnglesXYZ(1.55,0,0)

--_________________________________________________________________________________________________________________________________________________________________--

if(me.Backpack:findFirstChild("Magic") ~= nil)then
me.Backpack.Magic:Remove()
end

me = script.Parent.Parent 
me2 = me.Character
if (script.Parent.className ~= "HopperBin") then
 	local h = Instance.new("HopperBin") 	
h.Name = "Magic" 	
h.Parent = me.Backpack 	
script.Parent = h 	
script.Name = "Function" 
end

function onKeyDown(key) 
key:lower() 
if(key == "b")then

ra.C0 = CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.3)
wait(0.3)
ra.C0 = CFrame.new(1.5,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0)
wait(0.3)
ra.C0 = CFrame.new(1.5,0,0)*CFrame.fromEulerAnglesXYZ(0.25,0,-0)

end
end
function onKeyUp(key) 
key:lower() 
end
function onSelected(mouse) 
mouse.KeyDown:connect(onKeyDown) 
mouse.KeyUp:connect(onKeyUp) 

la.Part0 = torso
ra.Part0 = torso
la.C0 = CFrame.new(-1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,0.6)
ra.C0 = CFrame.new(1,0.5,-1.1)*CFrame.fromEulerAnglesXYZ(1.55,0,-0.6)

end 

script.Parent.Selected:connect(onSelected)
script.Parent.Deselected:connect(function()end) 

function click (mouse) 
q = mouse.hit
laser(p1.Position,Vector3.new(q.x,q.y,q.z))
if(mouse.Target.Parent:findFirstChild("Humanoid")~= nil)then
mouse.Target.Parent.Humanoid.Health = mouse.Target.Parent.Humanoid.Health - 20
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=mouse.Target.Parent
			game:GetService("Debris"):AddItem(c,.5)
end
end 
function select (mouse) 
mouse.Button1Down:connect(function () click (mouse) end) 
end 
script.Parent.Selected:connect(select)  


-- mediafire