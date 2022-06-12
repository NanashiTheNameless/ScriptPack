me = game.Players.acb227

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

w1 = Instance.new("Weld") 
w1.Parent = me.Character
w1.Part0 = me.Character["Right Arm"] 
w1.Part1 = me.Character.Torso
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
w2 = Instance.new("Weld") 
w2.Parent = me.Character
w2.Part0 = me.Character["Left Arm"] 
w2.Part1 = me.Character.Torso
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

function onButton1Down(mouse) 

end 

function onButton1Up(mouse) 

end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="q" then 

end 
end 
end 


function onSelected(mouse) 
w1 = Instance.new("Weld") 
w1.Parent = me.Character
w1.Part0 = me.Character["Right Arm"] 
w1.Part1 = me.Character.Torso
w1.C0 = CFrame.fromEulerAnglesXYZ(1.5, 0, 0) + Vector3.new(0, 0, 0) 
w2 = Instance.new("Weld") 
w2.Parent = me.Character
w2.Part0 = me.Character["Left Arm"] 
w2.Part1 = me.Character.Torso
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.5, 0, 0) + Vector3.new(0, 0, 0) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end 

sp.Selected:connect(onSelected) 