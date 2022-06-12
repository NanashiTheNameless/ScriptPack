elseif key == "t" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "TeleTo" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y+2,mouse.Hit.z) 
c.Fire:remove() 
c2 = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c2.Parent = workspace 
c2.Transparency = 1 
c2.Name = "TeleFrom" 
c2.Anchored = false 
c2.CFrame = bin.Parent.Parent.Character.Torso.CFrame 
c2.Fire.Size = 1 
c2.Fire.Heat = 6.5 
c2.Fire.Color = Color3.new(0.5,0.5,0.5) 
c2.Fire.SecondaryColor = Color3.new(0.5,0.5,0.3) 
cw = Instance.new("Weld") 
cw.Parent = c2 
cw.Part0 = cw.Parent 
cw.Part1 = bin.Parent.Parent.Character.Torso 
coroutine.resume(coroutine.create(Del), c, 2) 
coroutine.resume(coroutine.create(Del), c2, 3) 
coroutine.resume(coroutine.create(AnimW), 2) 
for i = 1, 18 do 
c2.Fire.Size = c2.Fire.Size + 1 
wait(0.05) 
end 
bin.Parent.Parent.Character.Torso.CFrame = c.CFrame + Vector3.new(0,5,0) 
wait(0.05) 
for ii = 1, 18 do 
c2.Fire.Size = c2.Fire.Size - 1 
wait(0.05) 
end 
else 
wait() 
end 