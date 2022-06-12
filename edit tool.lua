me = game.Players.acb227.Character 
em = game.Players.acb227 
if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") 
h.Name = "edit it" 
h.Parent = em.Backpack 
script.Parent = h 
wait(0.5) 
end --lego

bin = script.Parent 
function OnButton1Down(mouse) -- lookie lookie "OnButton1Down" 
if mode == "inspect" then 
thingy = mouse.target 
print(thingy.Name) 
end 
if mode == "delete" then 
thingy:remove() 
end 
if mode == "kill" then 
if thingy.Parent.Humanoid ~= nil then 
thingy.Parent.Humanoid.Health = 0 
end 
end 
if mode == "Head Size" then 
if hit.Parent.Head ~= nil then 
hit.Parent.Head.Mesh.Scale = w 
end 
end 
if mode == "Anchor" then 
thingy.Anchored = true 
end 
if mode == "UnAnchor" then 
thingy.Anchored = false 
end 
if mode == "Lock" then 
thingy.Locked = true 
end 
if mode == "UnLock" then 
thingy.Locked = false 
end 
if mode == "Cant" then 
thingy.CanCollide = false 
end 
if mode == "Can" then 
thingy.CanCollide = true 
end 
if mode == "Tele" then 
thingy.CFrame = CFrame.new(0,0,0) 
end 
if mode == "Tele2" then 
thingy.Position = Vector3.new(0,0,0) 
end 
end 
function OnButton1Up(mouse) 
end 
function OnKeyDown(key) 
if key == "z" then 
mode = "inspect" 
print(mode) 
end 
if key == "x" then 
mode = "delete" 
print(mode) 
end 
if key == "c" then 
mode = "kill" 
print(mode) 
end 
if key == "v" then 
mode = "Head Size" 
print(mode) 
end 
if key == "b" then 
mode = "Anchor" 
print(mode) 
end 
if key == "n" then 
mode = "UnAnchor" 
print(mode) 
end 
if key == "r" then 
mode = "Lock" 
print(mode) 
end 
if key == "q" then 
w = w + 1 
print(w) 
end 
if key == "e" then 
w = w - 1 
print(w) 
end 
if key == "t" then 
mode = "UnLock" 
print(mode) 
end 
if key == "y" then 
mode = "Can" 
print(mode) 
end 
if key == "u" then 
mode = "Cant" 
print(mode) 
end 
if key == "j" then 
mode = "Tele" 
print(mode) 
end 
if key == "k" then 
mode = "Tele2" 
print(mode) 
end 
end 
function OnKeyUp(key) 
end 
function onSelected(mouse) 
mouse.Button1Down:connect(function() OnButton1Down(mouse) end) 
mouse.Button1Up:connect(function() OnButton1Up(mouse) end) 
mouse.KeyDown:connect(OnKeyDown) 
mouse.KeyUp:connect(OnKeyUp) 
mouse.Icon = "rbxasset://textures\\CameraZoomIn.png" 
end 
function Deselected(mouse) 
end 
bin.Selected:connect(onSelected) 
bin.Deselected:connect(Deselected)