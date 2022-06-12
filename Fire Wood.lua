vip = game.Players.koopa13

if script.Parent.className ~= "HopperBin" then 
hop = Instance.new("HopperBin") 
hop.Parent = vip.Backpack 
hop.Name = "Press Q" 
script.Parent = hop 
end 
hop = script.Parent 
function click(mouse) 
if mouse.Target == nil then return end 

end 

function onKeyDown(key) 
if (key~=nil) then 
key = key:lower() 
if (key=="q") then 
Char = vip.Character 
Head = Char.Head
Torso = Char.Torso 
RA = Char["Right Arm"] 
LA = Char["Left Arm"] 
RL = Char["Right Leg"] 
LL = Char["Left Leg"] 
Char.Humanoid.WalkSpeed = 100
Fire = Instance.new("Fire") 
Fire.Parent = Torso 
Fire.Heat = 30 
Fire.Size = 25 

-----------------------------Head------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = Head 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = Head 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = Head 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = Head 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = Head 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = Head 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

-----------------------------Torso------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = Torso 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = Torso 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = Torso 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = Torso 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = Torso 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = Torso 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

-----------------------------Right Arm------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = RA 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = RA 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = RA 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = RA 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = RA 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = RA 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

-----------------------------Left Arm------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = LA 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = LA 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = LA 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = LA 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = LA 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = LA 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 


-----------------------------Right Leg------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = RL 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = RL 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = RL 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = RL 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = RL 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = RL 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

-----------------------------Left Leg------------------------------------
TopDecal = Instance.new("Decal") 
TopDecal.Parent = LL 
TopDecal. Face = "Top" 
TopDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

BottomDecal = Instance.new("Decal") 
BottomDecal.Parent = LL 
BottomDecal. Face = "Bottom" 
BottomDecal.Texture = "http://www.roblox.com/asset/?id=2929289" 

FrontDecal = Instance.new("Decal") 
FrontDecal.Parent = LL 
FrontDecal. Face = "Front" 
FrontDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

BackDecal = Instance.new("Decal") 
BackDecal.Parent = LL 
BackDecal. Face = "Back" 
BackDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

RightDecal = Instance.new("Decal") 
RightDecal.Parent = LL 
RightDecal. Face = "Right" 
RightDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 

LeftDecal = Instance.new("Decal") 
LeftDecal.Parent = LL 
LeftDecal. Face = "Left" 
LeftDecal.Texture = "http://www.roblox.com/asset/?id=6930008" 
end 
end 
end 



function select(mouse) 
mouse.KeyDown:connect(function() onKeydown(key) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
hop.Selected:connect(select) 