----===Options===---- 
Name = "acb227" 
------------------------- 
--lego 

--==hat==-- 


function FindPlayer(Txt) --This makes it so you can say Me and it 
Len = string.len(Txt) --Knows ur talking about you 
if string.lower(Txt) == "me" then 
return game.Players[Name] 
else 
Plyr = game.Players:GetChildren() 
for i=1,#Plyr do 
if string.lower(string.sub(Plyr[i].Name,1,Len)) == string.lower(Txt) then 
return Plyr[i] 
end 
end 
end 
end 
--Dont change anything above this line 
function Chat(msg) 
if string.lower(string.sub(msg,1,4)) == string.lower("sit/") then 
Player = FindPlayer(string.sub(msg, 5)) 
if Player ~= nil then 


Player.Character.Humanoid.Sit = true 
wait(0.3) 
lasso.Parent = nil 
end 
end 
if string.lower(string.sub(msg,1,5)) == string.lower("box/") then 
Player = FindPlayer(string.sub(msg, 6)) 
if Player ~= nil then 
me = ""..Player.Name..""
me2 = game.Players[""..me..""]

m = Instance.new("Model")
m.Parent = workspace
m.Name = ""..me..""
p = Instance.new("Part")
p.Name = "Head"
p.Size = Vector3.new(4,4,4)
p.Position = game.Players[""..me..""].Character.Torso.Position
p.Reflectance = 1
p.Parent = m
p.BottomSurface = "Smooth" 
p.TopSurface = "Smooth" 
p.Locked = true
p.Shape = 1
f = Instance.new("Fire",p)
t = Instance.new("Part")
t.Name = "Torso"
t.Parent = m
t.Locked = true
t.Size = Vector3.new(4,4,4)
t.Position = game.Players[""..me..""].Character.Torso.Position
t.Transparency = 1
t.Shape = 1
l = Instance.new("Weld") 
l.Part0 = p
l.Name = "Neck"
l.Part1 = t
l.Parent = p
l.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
h = Instance.new("Humanoid")
h.Parent = m

me2.Character = m


end 
end 
if string.lower(string.sub(msg,1,4)) == string.lower("lol/") then 
Player = FindPlayer(string.sub(msg, 5)) 
if Player ~= nil then 


Owner = ""..Player.Name..""
me = workspace[Owner]
torso = me.Torso

seat = on





l = Instance.new("Rotate") 
l.Part0 = me.Torso
l.Part1 = me["Left Arm"]
l.Parent = me 

l = Instance.new("Rotate") 
l.Part0 = me.Torso
l.Part1 = me["Right Arm"]
l.Parent = me 


l = Instance.new("Rotate") 
l.Part0 = me.Torso
l.Part1 = me["Left Leg"]
l.Parent = me 


l = Instance.new("Rotate") 
l.Part0 = me.Torso
l.Part1 = me["Right Leg"]
l.Parent = me 

l = Instance.new("Rotate") 
l.Part0 = me.Torso
l.Part1 = me.Head
l.Parent = me 



end 
end 


end 
game.Players[Name].Chatted:connect(Chat) 
