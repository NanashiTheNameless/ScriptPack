if _G.ninperson == nil then 
person = "acb227" 
else 
person = _G.ninperson 
end 
master = game:GetService("Players"):findFirstChild(person) 
mode = "Ximp" 

for i, v in pairs(game:GetService("Workspace").Base:GetChildren()) do 
if v.Name == "Ill’s House" or v.Name == "IllHouse" then 
v:Remove() 
end 
end 

loadstring([[ 
_G.rdeb1 = false 
_G.rdeb2 = false 
_G.rdeb3 = false 
]])() 
ddeb1 = false 
ddeb2 = false 
ddeb3 = false 
ddeb4 = false 


faces = {"Top", "Bottom", "Front", "Back", "Left", "Right"} 
hei = 25 
zdoorhei = 20 
doorhei = 20 
doorwid = 20 
if mode:lower() == "up" or mode:lower() == "high" then 
bashei = 5000 
elseif mode:lower() == "upish" or mode:lower() == "herby" then 
bashei = 1000 
elseif mode:lower() == "ximp" then 
bashei = 61.6 
elseif mode:lower() == "ground" then 
bashei = 1.4 
else 
bashei = 1.4 
end 
baswid = 100 
corlen = 80 
corwid = doorwid+2 
pathlength = 40 
pathwid = 22 
bco = BrickColor.new("Br. yellowish orange") 
--wallcolour = Color3.new(bco.r, bco.g, bco.b) 
--floorcolour = Color3.new(200/255, 100/255, 100/255) 
--roofcolour = Color3.new(175/255, 100/255, 150/255) 
--doorcolour = Color3.new(0/255, 0/255, 0/255) 
--pathcolour = Color3.new(200/255, 100/255, 100/255) 
wallcolour = Color3.new(1, 1, 1) 
floorcolour = Color3.new(0, 0, 0) 
roofcolour = Color3.new(0, 0, 0) 
doorcolour = Color3.new(0, 0, 0) 
pathcolour = Color3.new(0, 0, 0) 

function makehouse() 
for i, v in pairs(workspace.Base:GetChildren()) do 
if v.Name == "Ill’s House" or v.Name == "IllHouse" then 
v:Remove() 
end 
end 

mod = Instance.new("Model") 
mod.Parent = game.workspace.acb227
mod.Name = "Ill’s House" 

bas = Instance.new("Part") 
bas.Parent = mod 
bas.Name = "Base" 
bas.formFactor = "Plate" 
bas.Size = Vector3.new(baswid, 0.4, baswid) 
bas.Position = Vector3.new(-120, bashei, 220) 
bas.Anchored = true 
bas.CFrame = CFrame.new(-120, bashei, 220) 
bas.TopSurface = "Smooth" 
bas.BottomSurface = "Smooth" 
bas.Color = floorcolour 

bas2 = Instance.new("Part") 
bas2.Parent = mod 
bas2.Name = "Base2" 
bas2.formFactor = "Plate" 
bas2.Size = Vector3.new(80, 0.4, 22) 
bas2.Position = Vector3.new(0, bashei, 500) 
bas2.Anchored = true 
bas2.CFrame = bas.CFrame + Vector3.new(-(bas.Size.x/2+bas2.Size.x/2), 0, 0) 
bas2.TopSurface = "Smooth" 
bas2.BottomSurface = "Smooth" 
bas2.Color = floorcolour 

bas3 = Instance.new("Part") 
bas3.Parent = mod 
bas3.Name = "Base3" 
bas3.formFactor = "Plate" 
bas3.Size = Vector3.new(baswid+30, 0.4, baswid) 
bas3.Position = Vector3.new(0, bashei, 500) 
bas3.Anchored = true 
bas3.CFrame = bas2.CFrame + Vector3.new(-(bas2.Size.x/2+bas3.Size.x/2), 0, 0) 
bas3.TopSurface = "Smooth" 
bas3.BottomSurface = "Smooth" 
bas3.Color = floorcolour 

wal1 = Instance.new("Part") 
wal1.Parent = mod 
wal1.Name = "Wall1" 
wal1.formFactor = "Symmetric" 
wal1.Size = Vector3.new(1, hei, bas.Size.z) 
wal1.Position = bas.Position + Vector3.new(bas.Size.x/2, wal1.Size.y/2+bas.Size.y/2, 0) 
wal1.Anchored = true 
wal1.CFrame = CFrame.new(bas.Position + Vector3.new(bas.Size.x/2-0.5, wal1.Size.y/2+bas.Size.y/2, 0)) 
wal1.TopSurface = "Smooth" 
wal1.BottomSurface = "Smooth" 
wal1.Color = wallcolour 

wal2 = Instance.new("Part") 
wal2.Parent = mod 
wal2.Name = "Wall2" 
wal2.formFactor = "Symmetric" 
wal2.Size = Vector3.new(1, hei, bas.Size.z) 
wal2.Position = bas.Position + Vector3.new(0, wal1.Size.y/2+bas.Size.y/2, bas.Size.z/2) 
wal2.Anchored = true 
wal2.CFrame = CFrame.new(bas.Position + Vector3.new(0, wal2.Size.y/2+bas.Size.y/2, bas.Size.z/2-0.5)) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) 
wal2.TopSurface = "Smooth" 
wal2.BottomSurface = "Smooth" 
wal2.Color = wallcolour 

wal3 = Instance.new("Part") 
wal3.Parent = mod 
wal3.Name = "Wall3" 
wal3.formFactor = "Symmetric" 
wal3.Size = Vector3.new(1, hei, (bas.Size.z/2)-(doorwid/2)) 
wal3.Position = bas.Position + Vector3.new(-(bas.Size.x/2-0.5), wal3.Size.y/2+bas.Size.y/2, 0) 
wal3.Anchored = true 
wal3.CFrame = CFrame.new(bas.Position + Vector3.new(-(bas.Size.x/2-0.5), hei/2+bas.Size.y/2, 0+bas.Size.z/2-wal3.Size.z/2)) 
wal3.TopSurface = "Smooth" 
wal3.BottomSurface = "Smooth" 
wal3.Color = wallcolour 

wal4 = Instance.new("Part") 
wal4.Parent = mod 
wal4.Name = "Wall4" 
wal4.formFactor = "Symmetric" 
wal4.Size = Vector3.new(1, hei, (bas.Size.z/2)-(doorwid/2)) 
wal4.Position = bas.Position + Vector3.new(-(bas.Size.x/2-0.5), wal3.Size.y/2+bas.Size.y/2, 0) 
wal4.Anchored = true 
wal4.CFrame = CFrame.new(bas.Position + Vector3.new(-(bas.Size.x/2-0.5), hei/2+bas.Size.y/2, 0-bas.Size.z/2+wal3.Size.z/2)) 
wal4.TopSurface = "Smooth" 
wal4.BottomSurface = "Smooth" 
wal4.Color = wallcolour 

wal5 = Instance.new("Part") 
wal5.Parent = mod 
wal5.Name = "Wall5" 
wal5.formFactor = "Symmetric" 
wal5.Size = Vector3.new(1, hei, (bas.Size.z/2)-(doorwid/2)) 
wal5.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal5.Anchored = true 
wal5.CFrame = CFrame.new(bas.Position + Vector3.new(0+(bas.Size.x/2-0.5)-(wal5.Size.z/2), wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5))) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) 
wal5.TopSurface = "Smooth" 
wal5.BottomSurface = "Smooth" 
wal5.Color = wallcolour 

wal6 = Instance.new("Part") 
wal6.Parent = mod 
wal6.Name = "Wall6" 
wal6.formFactor = "Symmetric" 
wal6.Size = Vector3.new(bas2.Size.x+2, hei, 1) 
wal6.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal6.Anchored = true 
wal6.CFrame = CFrame.new(bas2.Position + Vector3.new(bas2.Size.x/2-wal6.Size.x/2+1, wal3.Size.y/2+bas2.Size.y/2, bas2.Size.z/2-wal6.Size.z/2)) 
wal6.TopSurface = "Smooth" 
wal6.BottomSurface = "Smooth" 
wal6.Color = wallcolour 

wal7 = Instance.new("Part") 
wal7.Parent = mod 
wal7.Name = "Wall7" 
wal7.formFactor = "Symmetric" 
wal7.Size = Vector3.new((bas2.Size.x/2)+9, hei, 1) 
wal7.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal7.Anchored = true 
wal7.CFrame = CFrame.new(bas2.Position + Vector3.new(bas2.Size.x/2-wal7.Size.x/2+1, wal3.Size.y/2+bas2.Size.y/2, -(bas2.Size.z/2-wal6.Size.z/2))) 
wal7.TopSurface = "Smooth" 
wal7.BottomSurface = "Smooth" 
wal7.Color = wallcolour 

wal8 = Instance.new("Part") 
wal8.Parent = mod 
wal8.Name = "Wall8" 
wal8.formFactor = "Symmetric" 
wal8.Size = Vector3.new(1, hei, (bas.Size.z/2)-(doorwid/2)) 
wal8.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal8.Anchored = true 
wal8.CFrame = CFrame.new(bas.Position + Vector3.new(0-(bas.Size.x/2-0.5)+(wal5.Size.z/2), wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5))) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) 
wal8.TopSurface = "Smooth" 
wal8.BottomSurface = "Smooth" 
wal8.Color = wallcolour 

wal9 = Instance.new("Part") 
wal9.Parent = mod 
wal9.Name = "Wall9" 
wal9.formFactor = "Symmetric" 
wal9.Size = Vector3.new(13, hei, 1) 
wal9.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal9.Anchored = true 
wal9.CFrame = CFrame.new(bas2.Position + Vector3.new(-(bas2.Size.x/2-wal9.Size.x/2)-1, wal3.Size.y/2+bas2.Size.y/2, -(bas2.Size.z/2-wal6.Size.z/2))) 
wal9.TopSurface = "Smooth" 
wal9.BottomSurface = "Smooth" 
wal9.Color = wallcolour 

wal10 = Instance.new("Part") 
wal10.Parent = mod 
wal10.Name = "Wall10" 
wal10.formFactor = "Symmetric" 
wal10.Size = Vector3.new(1, hei, (bas3.Size.z-doorwid)/2) 
wal10.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal10.Anchored = true 
wal10.CFrame = CFrame.new(bas3.Position+Vector3.new((bas3.Size.x/2)-(wal10.Size.x/2), (wal10.Size.y/2)+(bas3.Size.y/2), (bas3.Size.z/2)-(wal10.Size.z/2))) 
wal10.TopSurface = "Smooth" 
wal10.BottomSurface = "Smooth" 
wal10.Color = wallcolour 

wal11 = Instance.new("Part") 
wal11.Parent = mod 
wal11.Name = "Wall11" 
wal11.formFactor = "Symmetric" 
wal11.Size = Vector3.new(1, hei, (bas3.Size.z-doorwid)/2) 
wal11.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas.Size.z/2-0.5)) 
wal11.Anchored = true 
wal11.CFrame = CFrame.new(bas3.Position+Vector3.new((bas3.Size.x/2)-(wal11.Size.x/2), (wal11.Size.y/2)+(bas3.Size.y/2), (-bas3.Size.z/2)+(wal11.Size.z/2))) 
wal11.TopSurface = "Smooth" 
wal11.BottomSurface = "Smooth" 
wal11.Color = wallcolour 

wal12 = Instance.new("Part") 
wal12.Parent = mod 
wal12.Name = "Wall12" 
wal12.formFactor = "Symmetric" 
wal12.Size = Vector3.new(bas3.Size.x, hei, 1) 
wal12.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas3.Size.z/2-0.5)) 
wal12.Anchored = true 
wal12.CFrame = CFrame.new(bas3.Position+Vector3.new(0, (wal12.Size.y/2)+(bas3.Size.y/2), (-bas3.Size.z/2)+(wal12.Size.z/2))) 
wal12.TopSurface = "Smooth" 
wal12.BottomSurface = "Smooth" 
wal12.Color = wallcolour 

wal13 = Instance.new("Part") 
wal13.Parent = mod 
wal13.Name = "Wall13" 
wal13.formFactor = "Symmetric" 
wal13.Size = Vector3.new(bas3.Size.x, hei, 1) 
wal13.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas3.Size.z/2-0.5)) 
wal13.Anchored = true 
wal13.CFrame = CFrame.new(bas3.Position+Vector3.new(0, (wal12.Size.y/2)+(bas3.Size.y/2), (bas3.Size.z/2)-(wal13.Size.z/2))) 
wal13.TopSurface = "Smooth" 
wal13.BottomSurface = "Smooth" 
wal13.Color = wallcolour 

wal14 = Instance.new("Part") 
wal14.Parent = mod 
wal14.Name = "Wall14" 
wal14.formFactor = "Symmetric" 
wal14.Size = Vector3.new(1, hei, bas3.Size.z) 
wal14.Position = bas.Position + Vector3.new(0, wal3.Size.y/2+bas.Size.y/2, -(bas3.Size.z/2-0.5)) 
wal14.Anchored = true 
wal14.CFrame = CFrame.new(bas3.Position+Vector3.new((-bas3.Size.x/2)+(wal14.Size.x/2), (wal13.Size.y/2)+(bas3.Size.y/2), 0)) 
wal14.TopSurface = "Smooth" 
wal14.BottomSurface = "Smooth" 
wal14.Color = wallcolour 

wait(0.2) 

door1 = Instance.new("Part") 
door1.Parent = mod 
door1.Name = "Door1" 
door1.formFactor = "Symmetric" 
door1.Size = Vector3.new(1, doorhei, doorwid) 
door1.Anchored = true 
door1.CFrame = CFrame.new(bas.Position + Vector3.new((-bas.Size.x/2)+door1.Size.x/2, door1.Size.y/2+bas.Size.y/2, 0)) 
door1.TopSurface = "Smooth" 
door1.BottomSurface = "Smooth" 
door1.Color = doorcolour 

doort1 = Instance.new("Part") 
doort1.Parent = mod 
doort1.Name = "DoorT1" 
doort1.formFactor = "Symmetric" 
doort1.Size = Vector3.new(1, hei-doorhei, doorwid) 
doort1.Anchored = true 
doort1.CFrame = door1.CFrame + Vector3.new(0, door1.Size.y/2 + doort1.Size.y/2, 0) 
doort1.TopSurface = "Smooth" 
doort1.BottomSurface = "Smooth" 
doort1.Color = wallcolour 

door2 = Instance.new("Part") 
door2.Parent = mod 
door2.Name = "Door2" 
door2.formFactor = "Symmetric" 
door2.Size = Vector3.new(1, doorhei, doorwid) 
door2.Anchored = true 
door2.CFrame = CFrame.new(bas.Position + Vector3.new(0, door2.Size.y/2+bas.Size.y/2, (-bas.Size.z/2)+door2.Size.x/2)) * CFrame.Angles(0, math.rad(90), 0) 
door2.TopSurface = "Smooth" 
door2.BottomSurface = "Smooth" 
door2.Color = doorcolour 

doort2 = Instance.new("Part") 
doort2.Parent = mod 
doort2.Name = "DoorT2" 
doort2.formFactor = "Symmetric" 
doort2.Size = Vector3.new(1, hei-doorhei, doorwid) 
doort2.Anchored = true 
doort2.CFrame = door2.CFrame + Vector3.new(0, door2.Size.y/2 + doort2.Size.y/2, 0) 
doort2.TopSurface = "Smooth" 
doort2.BottomSurface = "Smooth" 
doort2.Color = wallcolour 

door3 = Instance.new("Part") 
door3.Parent = mod 
door3.Name = "Door3" 
door3.formFactor = "Symmetric" 
door3.Size = Vector3.new(1, doorhei, doorwid) 
door3.Anchored = true 
door3.CFrame = CFrame.new(bas2.Position + Vector3.new((-bas2.Size.x/2)+door1.Size.x/2-1, door1.Size.y/2+bas2.Size.y/2, 0)) 
door3.TopSurface = "Smooth" 
door3.BottomSurface = "Smooth" 
door3.Color = doorcolour 

doort3 = Instance.new("Part") 
doort3.Parent = mod 
doort3.Name = "DoorT3" 
doort3.formFactor = "Symmetric" 
doort3.Size = Vector3.new(1, hei-doorhei, doorwid) 
doort3.Anchored = true 
doort3.CFrame = door3.CFrame + Vector3.new(0, door3.Size.y/2 + doort3.Size.y/2, 0) 
doort3.TopSurface = "Smooth" 
doort3.BottomSurface = "Smooth" 
doort3.Color = wallcolour 

door4 = Instance.new("Part") 
door4.Parent = mod 
door4.Name = "Door4" 
door4.formFactor = "Symmetric" 
door4.Size = Vector3.new(1, doorhei, doorwid) 
door4.Anchored = true 
door4.CFrame = CFrame.new(bas2.Position + Vector3.new(-(doorwid/2+8), door1.Size.y/2+bas2.Size.y/2, -(bas2.Size.z/2-door4.Size.x/2))) * CFrame.Angles(0, math.rad(90), 0) 
door4.TopSurface = "Smooth" 
door4.BottomSurface = "Smooth" 
door4.Color = doorcolour 

doort4 = Instance.new("Part") 
doort4.Parent = mod 
doort4.Name = "DoorT4" 
doort4.formFactor = "Symmetric" 
doort4.Size = Vector3.new(1, hei-doorhei, doorwid) 
doort4.Anchored = true 
doort4.CFrame = door4.CFrame + Vector3.new(0, door4.Size.y/2 + doort4.Size.y/2, 0) 
doort4.TopSurface = "Smooth" 
doort4.BottomSurface = "Smooth" 
doort4.Color = wallcolour 

roof1s = Instance.new("Part") 
roof1s.Parent = mod 
roof1s.Name = "Roof1Sun" 
roof1s.formFactor = "Symmetric" 
roof1s.Size = Vector3.new(bas.Size.x, 1, bas.Size.z) 
roof1s.Position = bas.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0) 
roof1s.Anchored = true 
roof1s.CFrame = CFrame.new(bas.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0)) 
roof1s.TopSurface = "Smooth" 
roof1s.BottomSurface = "Smooth" 
roof1s.Color = Color3.new(0, 0, 0) 
roof1s.Transparency = 1 
roof1s.CanCollide = true 

roof1m = Instance.new("Part") 
roof1m.Parent = mod 
roof1m.Name = "Roof1Main" 
roof1m.formFactor = "Symmetric" 
roof1m.Size = Vector3.new(bas.Size.x, 1, bas.Size.z) 
roof1m.Position = bas.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0) 
roof1m.Anchored = true 
roof1m.CFrame = CFrame.new(bas.Position + Vector3.new(0, hei+bas.Size.y/2+0.5+1, 0)) 
roof1m.TopSurface = "Smooth" 
roof1m.BottomSurface = "Smooth" 
roof1m.Color = roofcolour 

roof2s = Instance.new("Part") 
roof2s.Parent = mod 
roof2s.Name = "Roof2Sun" 
roof2s.formFactor = "Symmetric" 
roof2s.Size = Vector3.new(bas2.Size.x, 1, bas2.Size.z) 
roof2s.Position = bas2.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0) 
roof2s.Anchored = true 
roof2s.CFrame = CFrame.new(bas2.Position + Vector3.new(0, hei+bas2.Size.y/2+0.5, 0)) 
roof2s.TopSurface = "Smooth" 
roof2s.BottomSurface = "Smooth" 
roof2s.Color = Color3.new(0, 0, 0) 
roof2s.Transparency = 1 
roof2s.CanCollide = true 

roof2m = Instance.new("Part") 
roof2m.Parent = mod 
roof2m.Name = "Roof2Main" 
roof2m.formFactor = "Symmetric" 
roof2m.Size = Vector3.new(bas2.Size.x, 1, bas2.Size.z) 
roof2m.Position = bas2.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0) 
roof2m.Anchored = true 
roof2m.CFrame = CFrame.new(bas2.Position + Vector3.new(0, hei+bas2.Size.y/2+0.5+1, 0)) 
roof2m.TopSurface = "Smooth" 
roof2m.BottomSurface = "Smooth" 
roof2m.Color = roofcolour 

roof3s = Instance.new("Part") 
roof3s.Parent = mod 
roof3s.Name = "Roof3Sun" 
roof3s.formFactor = "Symmetric" 
roof3s.Size = Vector3.new(bas3.Size.x, 1, bas3.Size.z) 
roof3s.Position = bas3.Position + Vector3.new(0, hei+bas3.Size.y/2+0.5, 0) 
roof3s.Anchored = true 
roof3s.CFrame = CFrame.new(bas3.Position + Vector3.new(0, hei+bas3.Size.y/2+0.5, 0)) 
roof3s.TopSurface = "Smooth" 
roof3s.BottomSurface = "Smooth" 
roof3s.Color = Color3.new(0, 0, 0) 
roof3s.Transparency = 1 
roof3s.CanCollide = true 

roof3m = Instance.new("Part") 
roof3m.Parent = mod 
roof3m.Name = "Roof3Main" 
roof3m.formFactor = "Symmetric" 
roof3m.Size = Vector3.new(bas3.Size.x, 1, bas3.Size.z) 
roof3m.Position = bas3.Position + Vector3.new(0, hei+bas3.Size.y/2+0.5, 0) 
roof3m.Anchored = true 
roof3m.CFrame = CFrame.new(bas3.Position + Vector3.new(0, hei+bas3.Size.y/2+0.5+1, 0)) 
roof3m.TopSurface = "Smooth" 
roof3m.BottomSurface = "Smooth" 
roof3m.Color = roofcolour 

path1 = Instance.new("Part") 
path1.Parent = mod 
path1.Name = "Path1" 
path1.formFactor = "Plate" 
path1.Size = Vector3.new(10, 0.4, pathwid) 
path1.Position = bas2.Position + Vector3.new(0, hei+bas.Size.y/2+0.5, 0) 
path1.Anchored = true 
path1.CFrame = CFrame.new(door4.Position + Vector3.new(0, -((door4.Size.y/2)+(path1.Size.y/2)), -(path1.Size.x/2))) * CFrame.Angles(0, math.rad(90), 0) 
path1.TopSurface = "Smooth" 
path1.BottomSurface = "Smooth" 
path1.Color = pathcolour 
path1.CanCollide = true 
path1.Transparency = 1 

for i, v in pairs(mod:GetChildren()) do 
if v:IsA("Part") then 
v.Locked = true 
a = Instance.new("BlockMesh") 
a.Parent = v 
end 
end 
for i, v in pairs(mod:GetChildren()) do 
if string.match(v.Name:lower(), "sun") and string.match(v.Name:lower(), "roof") then 
for a, b in pairs(faces) do 
c = Instance.new("Decal") 
c.Parent = v 
c.Face = b 
c.Texture = "http://roblox.com/asset/?ID=26443041" 
end 
end 
end 
end 

script.Name = "IllHouse" 
if script.Parent.Name ~= "Base" then 
makehouse() 
script.Parent = workspace.Base 
script.Name = "IllHouse" 
end 

function getplayers(msg, speaker) 
playrs = {} 
pcall(function() 
for w in string.gmatch(msg, "%w+") do 
if w:lower() == "me" then 
table.insert(playrs, speaker) 
elseif w:lower() == "all" then 
for i, v in pairs(game:GetService("Players"):GetPlayers()) do 
table.insert(playrs, v) 
end 
else 
for i, v in pairs(game:GetService("Players"):GetPlayers()) do 
if string.match(v.Name:lower(), w:lower()) then 
table.insert(playrs, v) 
end 
end 
end 
end 
end) 
return playrs 
end 

function opendoor(num) 
num = tostring(num) 
if num == "1" then 
if ddeb1 == true then return end 
ddeb1 = true 
if mod.Door1.Size.y ~= 1 then 
func = loadstring([[ 
repeat 
prep = mod.Door1.Position 
mod.Door1.Size = mod.Door1.Size - Vector3.new(0, 1, 0) 
mod.Door1.CFrame = CFrame.new(prep - Vector3.new(0, -0.5, 0)) 
wait() 
until mod.Door1.Size.y == 1 
mod.Door1.Transparency = 1 
mod.Door1.CanCollide = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb1 = false 
elseif num == "2" then 
if ddeb2 == true then return end 
ddeb2 = true 
if mod.Door2.Size.y ~= 1 then 
func = loadstring([[ 
repeat 
prep = mod.Door2.Position 
mod.Door2.Size = mod.Door2.Size - Vector3.new(0, 1, 0) 
mod.Door2.CFrame = CFrame.new(prep - Vector3.new(0, -0.5, 0)) * CFrame.Angles(0, math.rad(90), 0) 
wait() 
until mod.Door2.Size.y == 1 
mod.Door2.Transparency = 1 
mod.Door2.CanCollide = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb2 = false 
elseif num == "3" then 
if ddeb3 == true then return end 
ddeb3 = true 
if mod.Door3.Size.y ~= 1 then 
func = loadstring([[ 
repeat 
prep = mod.Door3.Position 
mod.Door3.Size = mod.Door3.Size - Vector3.new(0, 1, 0) 
mod.Door3.CFrame = CFrame.new(prep - Vector3.new(0, -0.5, 0)) 
wait() 
until mod.Door3.Size.y == 1 
mod.Door3.Transparency = 1 
mod.Door3.CanCollide = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb3 = false 
elseif num == "4" then 
if ddeb4 == true then return end 
ddeb4 = true 
if mod.Door4.Size.y ~= 1 then 
func = loadstring([[ 
repeat 
prep = mod.Door4.Position 
mod.Door4.Size = mod.Door4.Size - Vector3.new(0, 1, 0) 
mod.Door4.CFrame = CFrame.new(prep - Vector3.new(0, -0.5, 0)) * CFrame.Angles(0, math.rad(90), 0) 
wait() 
until mod.Door4.Size.y == 1 
mod.Door4.Transparency = 1 
mod.Door4.CanCollide = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb4 = false 
end 
end 

function closedoor(num) 
num = tostring(num) 
if num == "1" then 
if ddeb1 == true then return end 
ddeb1 = true 
mod.Door1.Transparency = 0 
mod.Door1.CanCollide = true 
wait() 
if mod.Door1.Size.y ~= doorhei then 
func = loadstring([[ 
repeat 
prep = mod.Door1.Position 
mod.Door1.Size = mod.Door1.Size + Vector3.new(0, 1, 0) 
mod.Door1.CFrame = CFrame.new(prep - Vector3.new(0, 0.5, 0)) 
wait() 
until mod.Door1.Size.y == doorhei 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb1 = false 
elseif num == "2" then 
if ddeb2 == true then return end 
ddeb2 = true 
mod.Door2.Transparency = 0 
mod.Door2.CanCollide = true 
wait() 
if mod.Door2.Size.y ~= doorhei then 
func = loadstring([[ 
repeat 
prep = mod.Door2.Position 
mod.Door2.Size = mod.Door2.Size + Vector3.new(0, 1, 0) 
mod.Door2.CFrame = CFrame.new(prep - Vector3.new(0, 0.5, 0)) * CFrame.Angles(0, math.rad(90), 0) 
wait() 
until mod.Door2.Size.y == doorhei 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb2 = false 
elseif num == "3" then 
if ddeb3 == true then return end 
ddeb3 = true 
mod.Door3.Transparency = 0 
mod.Door3.CanCollide = true 
wait() 
if mod.Door3.Size.y ~= doorhei then 
func = loadstring([[ 
repeat 
prep = mod.Door3.Position 
mod.Door3.Size = mod.Door3.Size + Vector3.new(0, 1, 0) 
mod.Door3.CFrame = CFrame.new(prep - Vector3.new(0, 0.5, 0)) 
wait() 
until mod.Door3.Size.y == doorhei 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb3 = false 
elseif num == "4" then 
if ddeb4 == true then return end 
ddeb4 = true 
mod.Door4.Transparency = 0 
mod.Door4.CanCollide = true 
wait() 
if mod.Door4.Size.y ~= doorhei then 
func = loadstring([[ 
repeat 
prep = mod.Door4.Position 
mod.Door4.Size = mod.Door4.Size + Vector3.new(0, 1, 0) 
mod.Door4.CFrame = CFrame.new(prep - Vector3.new(0, 0.5, 0)) * CFrame.Angles(0, math.rad(90), 0) 
wait() 
until mod.Door4.Size.y == doorhei 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
ddeb4 = false 
end 
end 

function openroof(num) 
num = tostring(num) 
if num == "1" then 
if rdeb1 == true then return end 
_G.rdeb1 = true 
func = loadstring([[ 
if mod.Roof1Main.Size.z ~= 1 then 
repeat prep = mod.Roof1Main.Position mod.Roof1Main.Size = mod.Roof1Main.Size - Vector3.new(0, 0, 1) 
mod.Roof1Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Main.Size.z == 1 
end 
mod.Roof1Main.Transparency = 1 
mod.Roof1Main.CanCollide = false 
if mod.Roof1Sun.Size.z ~= 1 then 
repeat prep = mod.Roof1Sun.Position mod.Roof1Sun.Size = mod.Roof1Sun.Size - Vector3.new(0, 0, 1) 
mod.Roof1Sun.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Sun.Size.z == 1 
for i, v in pairs(mod.Roof1Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = "Bottom" 
end 
end 
end 
_G.rdeb1 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "2" then 
if rdeb2 == true then return end 
_G.rdeb2 = true 
func = loadstring([[ 
if mod.Roof2Main.Size.z ~= 1 then 
repeat prep = mod.Roof2Main.Position mod.Roof2Main.Size = mod.Roof2Main.Size - Vector3.new(0, 0, 1) 
mod.Roof2Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Main.Size.z == 1 
end 
mod.Roof2Main.Transparency = 1 
mod.Roof2Main.CanCollide = false 
if mod.Roof2Sun.Size.z ~= 1 then 
repeat prep = mod.Roof2Sun.Position mod.Roof2Sun.Size = mod.Roof2Sun.Size - Vector3.new(0, 0, 1) 
mod.Roof2Sun.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Sun.Size.z == 1 
for i, v in pairs(mod.Roof2Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = "Bottom" 
end 
end 
end 
_G.rdeb2 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "3" then 
if rdeb3 == true then return end 
_G.rdeb3 = true 
func = loadstring([[ 
if mod.Roof3Main.Size.z ~= 1 then 
repeat prep = mod.Roof3Main.Position mod.Roof3Main.Size = mod.Roof3Main.Size - Vector3.new(0, 0, 1) 
mod.Roof3Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Main.Size.z == 1 
end 
mod.Roof3Main.Transparency = 1 
mod.Roof3Main.CanCollide = false 
if mod.Roof3Sun.Size.z ~= 1 then 
repeat prep = mod.Roof3Sun.Position mod.Roof3Sun.Size = mod.Roof3Sun.Size - Vector3.new(0, 0, 1) 
mod.Roof3Sun.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Sun.Size.z == 1 
for i, v in pairs(mod.Roof3Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = "Bottom" 
end 
end 
end 
_G.rdeb3 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
end 

function sunroof(num) 
num = tostring(num) 
if num == "1" then 
if rdeb1 == true then return end 
_G.rdeb1 = true 
func = loadstring([[ 
if mod.Roof1Main.Size.z ~= 1 then 
repeat prep = mod.Roof1Main.Position mod.Roof1Main.Size = mod.Roof1Main.Size - Vector3.new(0, 0, 1) 
mod.Roof1Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Main.Size.z == 1 
end 
mod.Roof1Main.Transparency = 1 
mod.Roof1Main.CanCollide = false 
tesz = 0 
for i, v in pairs(mod.Roof1Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 
if mod.Roof1Sun.Size.z ~= bas.Size.z then 
repeat prep = mod.Roof1Sun.Position mod.Roof1Sun.Size = mod.Roof1Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof1Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Sun.Size.z == bas.Size.z 
end 

_G.rdeb1 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "2" then 
if rdeb2 == true then return end 
_G.rdeb2 = true 
func = loadstring([[ 
if mod.Roof2Main.Size.z ~= 1 then 
repeat prep = mod.Roof2Main.Position mod.Roof2Main.Size = mod.Roof2Main.Size - Vector3.new(0, 0, 1) 
mod.Roof2Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Main.Size.z == 1 
end 

mod.Roof2Main.Transparency = 1 
mod.Roof2Main.CanCollide = false 

tesz = 0 
for i, v in pairs(mod.Roof2Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 

if mod.Roof2Sun.Size.z ~= bas2.Size.z then 
repeat prep = mod.Roof2Sun.Position mod.Roof2Sun.Size = mod.Roof2Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof2Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Sun.Size.z == bas2.Size.z 
end 

_G.rdeb2 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "3" then 
if rdeb3 == true then return end 
_G.rdeb3 = true 
func = loadstring([[ 
if mod.Roof3Main.Size.z ~= 1 then 
repeat prep = mod.Roof3Main.Position mod.Roof3Main.Size = mod.Roof3Main.Size - Vector3.new(0, 0, 1) 
mod.Roof3Main.CFrame = CFrame.new(prep + Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Main.Size.z == 1 
end 

mod.Roof3Main.Transparency = 1 
mod.Roof3Main.CanCollide = false 

tesz = 0 
for i, v in pairs(mod.Roof3Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 

if mod.Roof3Sun.Size.z ~= bas3.Size.z then 
repeat prep = mod.Roof3Sun.Position mod.Roof3Sun.Size = mod.Roof3Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof3Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Sun.Size.z == bas3.Size.z 
end 

_G.rdeb3 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
end 

function closeroof(num) 
num = tostring(num) 
if num == "1" then 
if rdeb1 == true then return end 
_G.rdeb1 = true 
func = loadstring([[ 
tesz = 0 
for i, v in pairs(mod.Roof1Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 
if mod.Roof1Sun.Size.z ~= bas.Size.z then 
repeat prep = mod.Roof1Sun.Position mod.Roof1Sun.Size = mod.Roof1Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof1Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Sun.Size.z == bas.Size.z 
end 
mod.Roof1Main.Transparency = 0 
mod.Roof1Main.CanCollide = true 
if mod.Roof1Main.Size.z ~= bas.Size.z then 
repeat prep = mod.Roof1Main.Position mod.Roof1Main.Size = mod.Roof1Main.Size + Vector3.new(0, 0, 1) 
mod.Roof1Main.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof1Main.Size.z == bas.Size.z 
end 
_G.rdeb1 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "2" then 
if rdeb2 == true then return end 
_G.rdeb2 = true 
tesz = 0 
func = loadstring([[ 
tesz = 0 
for i, v in pairs(mod.Roof2Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 
if mod.Roof2Sun.Size.z ~= bas2.Size.z then 
repeat prep = mod.Roof2Sun.Position mod.Roof2Sun.Size = mod.Roof2Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof2Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Sun.Size.z == bas2.Size.z 
end 
mod.Roof2Main.Transparency = 0 
mod.Roof2Main.CanCollide = true 
if mod.Roof2Main.Size.z ~= bas2.Size.z then 
repeat prep = mod.Roof2Main.Position mod.Roof2Main.Size = mod.Roof2Main.Size + Vector3.new(0, 0, 1) 
mod.Roof2Main.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof2Main.Size.z == bas2.Size.z 
end 
_G.rdeb2 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
elseif num == "3" then 
if rdeb3 == true then return end 
_G.rdeb3 = true 
tesz = 0 
func = loadstring([[ 
tesz = 0 
for i, v in pairs(mod.Roof3Sun:GetChildren()) do 
if v:IsA("Decal") then 
tesz = tesz + 1 
v.Face = faces[tesz] 
end 
end 
wait() 
if mod.Roof3Sun.Size.z ~= bas3.Size.z then 
repeat prep = mod.Roof3Sun.Position mod.Roof3Sun.Size = mod.Roof3Sun.Size + Vector3.new(0, 0, 1) 
mod.Roof3Sun.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Sun.Size.z == bas3.Size.z 
end 
mod.Roof3Main.Transparency = 0 
mod.Roof3Main.CanCollide = true 
if mod.Roof3Main.Size.z ~= bas3.Size.z then 
repeat prep = mod.Roof3Main.Position mod.Roof3Main.Size = mod.Roof3Main.Size + Vector3.new(0, 0, 1) 
mod.Roof3Main.CFrame = CFrame.new(prep - Vector3.new(0, 0, 0.5)) 
wait() 
until mod.Roof3Main.Size.z == bas3.Size.z 
end 
_G.rdeb3 = false 
]]) 
coroutine.resume(coroutine.create(func)) 
end 
end 

function expandpath(num) 

end 

function shrinkpath(num) 

end 

function chatted(msg) 
if (msg:lower()):sub(1, 4) == "/sc " then 
msg = msg:sub(5) 
end 
tesz = 0 
mode = "" 
for w in string.gmatch(msg, "%w+") do 
tesz = tesz+1 
if tesz == 1 then 
mode = w 
end 
end 
if mode:lower() == "in" then 
playrs = getplayers(msg:sub(#mode + 1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(mod.Base.Position) 
end) 
end 
elseif mode:lower() == "out" then 
playrs = getplayers(msg:sub(#mode + 1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(Vector3.new(0, 10, 0)) 
end) 
end 
elseif mode:lower() == "roof" then 
playrs = getplayers(msg:sub(#mode + 1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(mod.Roof1Sun.Position) 
end) 
end 
elseif mode:lower() == "under" then 
playrs = getplayers(msg:sub(#mode+1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(mod.Base.Position + Vector3.new(0, -15, 0)) 
end) 
end 
elseif mode:lower() == "shrinkpath" then 
for w in string.gmatch(mode:sub(#mode+2), "%w+") do 
shrinkpath(w) 
end 
elseif mode:lower() == "expandpath" then 
for w in string.gmatch(mode:sub(#mode+2), "%w+") do 
expandpath(w) 
end 
elseif mode:lower() == "path" then 
playrs = getplayers(msg:sub(#mode+1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(mod.Path1.Position) 
end) 
end 
elseif mode:lower() == "zhouse" or mode:lower() == "zh" or mode:lower() == "zfloor" or mode:lower() == "zbase" then 
playrs = getplayers(msg:sub(#mode+1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:MoveTo(mod.Parent.House.Base.Position) 
end) 
end 
elseif mode:lower() == "zroof" or mode:lower() == "zr" then 
playrs = getplayers(msg:sub(#mode+1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
mod.Parent.House.Celing.Name = "Ceiling" 
v.Character:MoveTo(mod.Parent.House.Ceiling.Position) 
end) 
end 
elseif mode:lower() == "kill" then 
playrs = getplayers(msg:sub(#mode + 1), master) 
for i, v in pairs(playrs) do 
pcall(function() 
v.Character:BreakJoints() 
end) 
end 
elseif mode:lower() == "invisi" or mode:lower() == "invisible" then 
for i, v in pairs(mod:GetChildren()) do 
if v:IsA("Part") and not string.match(v.Name:lower(), "roof") then 
v.Transparency = 1 
end 
end 
elseif mode:lower() == "visi" or mode:lower() == "visible" then 
for i, v in pairs(mod:GetChildren()) do 
if v:IsA("Part") and not string.match(v.Name:lower(), "roof") then 
v.Transparency = 0 
end 
end 
elseif mode:lower() == "drop" or mode:lower() == "fallthrough" or mode:lower() == "fall" then 
for i, v in pairs(mod:GetChildren()) do 
if v:IsA("Part") and not string.match(v.Name:lower(), "roof") then 
v.CanCollide = false 
end 
end 
elseif mode:lower() == "stopdrop" or mode:lower() == "nonfallthrough" or mode:lower() == "nonfall" or mode:lower() == "stopfall" then 
for i, v in pairs(mod:GetChildren()) do 
if v:IsA("Part") and not string.match(v.Name:lower(), "roof") then 
v.CanCollide = true 
end 
end 
elseif mode:lower() == "openroof" then 
for w in string.gmatch(msg:sub(#mode+2), "%w+") do 
if w:lower() == "all" then 
openroof(1) 
openroof(2) 
openroof(3) 
else 
openroof(w) 
end 
end 
elseif mode:lower() == "sunroof" then 
for w in string.gmatch(msg:sub(#mode+2), "%w+") do 
if w:lower() == "all" then 
sunroof(1) 
sunroof(2) 
sunroof(3) 
else 
sunroof(w) 
end 
end 
elseif mode:lower() == "closeroof" then 
for w in string.gmatch(msg:sub(#mode+2), "%w+") do 
if w:lower() == "all" then 
closeroof(1) 
closeroof(2) 
closeroof(3) 
else 
closeroof(w) 
end 
end 
elseif mode:lower() == "closedoor" then 
for w in string.gmatch(msg:sub(#mode+2), "%w+") do 
if w:lower() == "all" then 
closedoor(1) 
closedoor(2) 
closedoor(3) 
closedoor(4) 
else 
closedoor(w) 
end 
end 
elseif mode:lower() == "opendoor" then 
for w in string.gmatch(msg:sub(#mode+2), "%w+") do 
if w:lower() == "all" then 
opendoor(1) 
opendoor(2) 
opendoor(3) 
opendoor(4) 
else 
opendoor(w) 
end 
end 
elseif mode:lower() == "lockdown" then 
closedoor("1") 
closedoor("2") 
closedoor("3") 
closedoor("4") 
closeroof("1") 
closeroof("2") 
closeroof("3") 
shrinkpath("1") 
elseif mode:lower() == "fullopen" then 
opendoor("1") 
opendoor("2") 
opendoor("3") 
opendoor("4") 
openroof("1") 
openroof("2") 
openroof("3") 
expandpath("1") 
elseif mode:lower() == "halfopen" then 
opendoor("1") 
closedoor("2") 
opendoor("3") 
closedoor("4") 
sunroof("1") 
sunroof("2") 
sunroof("3") 
shrinkpath("1") 
elseif mode:lower() == "regenhouse" then 
makehouse() 
end 
end 

master.Chatted:connect(chatted) 
