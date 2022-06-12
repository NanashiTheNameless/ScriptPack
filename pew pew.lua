if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "PewPew" 
bin.Parent = game.Players.acb227.Backpack 
script.Parent = bin 
end 

bin = script.Parent 
char = bin.Parent.Parent.Character 
place0 = char["Right Arm"] 

----[[Most Usefull function ever]]-------------- 
function Del(E, T) 
wait(T) 
E:remove() 
end 
----------------------------------------------- 

function onButton1Down(mouse) 

p = Instance.new("Part") 
p.Parent = char 
p.Name = "PewPewBeam" 
p.formFactor = "Plate" 
p.Size = Vector3.new(1,0.4,(place0.Position - mouse.Hit.p).magnitude) 
p.BrickColor = BrickColor.new("Really red") 
p.CFrame = CFrame.new((place0.Position+mouse.Hit.p)/2, place0.Position) 
p.Transparency = 0.25 
p.Reflectance = 0.05 
p.Locked = true 
p.CanCollide = false 
p.Anchored = true 
coroutine.resume(coroutine.create(Del), p, 0.5) 
x = Instance.new("Explosion") 
x.Parent = workspace 
x.Name = "Explo" 
x.Position = mouse.Hit.p 
x.BlastRadius = 2 

end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end) 

 
