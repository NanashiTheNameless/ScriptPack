Owner = Game.Players.lordsheen 
Char = Game.Workspace.lordsheen
function onChatted(msg) 
if msg == "commands/" then 
m = Instance.new("Hint") 
m.Parent = game.Workspace 
m.Text = "Thanks for using SoulStealer9875's Admin Commands." 
wait(3) 
m.Text = "Here's a small list of commands: Reset, f:m, s:m, :i, c:b, f:l, i:m, v:m, ff:m, uff:m, k:m, lol, c:, c:m, :h, r:t, k:a, c:e, p:s, b:a. Mess around with words for more." 
end 
if msg == "Reset" then 
Char.Torso:Remove() 
local a = Instance.new("Message") 
a.Parent = Workspace 
a.Text = "Soul: Sure Thing" 
wait(1.5) 
a:Remove() 
end 
if msg == "f:m" then 
Char.Humanoid.WalkSpeed = 32 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: No Problem" 
wait(1.5) 
a:Remove() 
end 
if msg == "s:m" then 
Char.Humanoid.WalkSpeed = 16 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Sure!" 
wait(1.5) 
a:Remove() 
end 
if msg == ":i" then 
x = game:GetService("InsertService"):LoadAsset(27154932) 
x.Parent=Char 
x:makeJoints() 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Anything for you" 
wait(1.5) 
a:Remove() 
end 
if msg == "c:b" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Creating New Base..." 
wait(1.5) 
a.Text = "Base Created" 
a:Remove() 
local p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Name = "Base" --Another name so others wont remove 
p.Anchored = true 
p.Locked = true 
p.BottomSurface = "Smooth" 
p.BrickColor = BrickColor.new (28) 
p.Size = Vector3.new(512, 1, 512) 
p.CFrame = CFrame.new(Vector3.new(0, 0, 0)) 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
end 
if msg == "f:l" then 
game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100) 
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0) 
game.Lighting.Ambient = Color3.new(2, 2, 2) 
game.Lighting.Brightness = 1 
game.Lighting.TimeOfDay = "12:00:00" 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Fixed it" 
wait(1.5) 
a:Remove() 
end 
if msg == "i:m" then 
Char.Head.Transparency = 1 
Char.Torso.Transparency = 1 
Char:findFirstChild("Left Leg").Transparency = 1 
Char:findFirstChild("Right Leg").Transparency = 1 
Char:findFirstChild("Left Arm").Transparency = 1 
Char:findFirstChild("Right Arm").Transparency = 1 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Your Invisible now" 
wait(1.5) 
a:Remove() 
end 
if msg == "v:m" then 
Char.Head.Transparency = 0 
Char.Torso.Transparency = 0 
Char:findFirstChild("Left Leg").Transparency = 0 
Char:findFirstChild("Right Leg").Transparency = 0 
Char:findFirstChild("Left Arm").Transparency = 0 
Char:findFirstChild("Right Arm").Transparency = 0 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Your now Visible" 
wait(1.5) 
a:Remove() 
end 
if msg == "ff:m" then 
local b = Instance.new("ForceField") 
b.Parent=Char 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Force Field On" 
wait(1.5) 
a:Remove() 
end 
if msg == "uff:m" then 
Char.ForceField:Remove() 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Soul: Bye Bye Force Field" 
wait(1.5) 
a:Remove() 
end 
if msg == "Thanks" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "No Problem" 
wait(1.5) 
a:Remove() 
end 
if msg == "e:m:" then 
local a = Instance.new("Message") 
a.Parent = Workspace 
a.Text = "Yes?" 
wait(1.5) 
a:Remove() 
end 
if msg == "k:m" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Sure, Ill do that now." 
wait(1.5) 
a:Remove() 
Char.Torso:Remove() 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Done it" 
wait(1.5) 
a:Remove() 
end 
if msg == "Are you ok Soul" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Im fine thanks, How about you?" 
wait(1.5) 
a:Remove() 
end 

if msg == "Im fine aswell" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Good to hear that" 
wait(1.5) 
a:Remove() 
end 
if msg == "Im bored" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Shall we go to another game?" 
wait(1.5) 
a:Remove() 
end 
if msg == "n:t" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "If your sure, Then its fine with me" 
wait(1.5) 
a:Remove() 
end 
if msg == "e:m" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Yes" 
wait(1.5) 
a:Remove() 
end 
if msg == "lol" then 
local m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = Owner.Character.Name.. " is laughing at you little noobs." 
wait(3) 
m:Remove() 
end 
if msg == "w:l" then 
local m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = "What are you lookin' at?" 
wait(3) 
m:Remove() 
end 
if msg == "c:" then 
p = game.Workspace:GetChildren() 
for i = 1,#p do 
if p[i].className == "Part" then 
p[i]:Remove() 
end 
end 
end 
if msg == "c:m" then 
m = game.Workspace:GetChildren() 
for i = 1,#m do 
if m[i].className == "Message" or m[i].className == "Hint" then 
m[i]:Remove() 
end 
end 
end 
if msg == "b:a" then 
yr = game.Players:GetChildren() 
for i = 1,#yr do 
if yr[i].Name == Owner.Character.Name then return end 
yr[i]:Remove() 
end 
end 
if msg == "r:b" then 
game.Workspace.Base:Remove() 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "I removed the Base as you asked" 
wait(1.5) 
a:Remove() 
end 
---Chat Part--- 
if msg == "Hello" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Hello" 
wait(1.5) 
a:Remove() 
end 
if msg == "h:a:y" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Im fine thanks" 
wait(1.5) 
a.Text = "What about you?" 
wait(1.5) 
a:Remove() 
end 
if msg == "Not cool" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Oh i sorry to hear that" 
wait(1.5) 
a:Remove() 
end 
if msg == "Cool" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Im glad to here that" 
wait(1.5) 
a:Remove() 
end 
if msg == ":help" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Someone help do it fast" 
wait(1.5) 
a:Remove() 
end 
if msg == ":h" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Sure thing" 
wait(1.5) 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-7.5, 500, -93) p.Size = Vector3.new(65, 1.2, 68) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1004) p.Name = "1" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-7, 500, -54) p.Size = Vector3.new(10, 1.2, 10) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1004) p.Name = "2" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-26, 509, -59.5) p.Size = Vector3.new(28, 16.8, 1) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "3" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(11.5, 509, -59.5) p.Size = Vector3.new(27, 16.8, 1) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "4" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-39.5, 509, -93.5) p.Size = Vector3.new(1, 16.8, 67) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "5" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(24.5, 509, -93.5) p.Size = Vector3.new(1, 16.8, 67) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "6" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-7.5, 509, -127) p.Size = Vector3.new(63, 16.8, 1) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "7" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-7.5, 518, -93) p.Size = Vector3.new(65, 1.2, 68) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1004) p.Name = "8" 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-7, 514, -59.5) p.Size = Vector3.new(10, 7.2, 1) p.Parent = game.Workspace p.Locked = false p.BrickColor = BrickColor.new(1003) p.Name = "9" 
wait(1.5) 
a.Text = "I did it" 
wait(1.5) 
a:Remove() 
end 
if msg == "r:t" then 
Char.Torso.CFrame = CFrame.new(-7, 505, -54) 
end 
if msg == ":b" then 
Char.Torso.CFrame = CFrame.new(0,5,0) 
end 
if msg == "k:a" then 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "Currently killing all" 
wait(1.5) 
game.Workspace:BreakJoints() 
wait(1.5) 
a.Text = "Everyone was killed" 
wait(1.5) 
a:Remove() 
end 
if msg == "p:s" then 
function onEnter(player) 
wait(5) 
if player.Name == "yoyoking11" then return end 
player:Remove() 
end 
game.Players.ChildAdded:connect(onEnter) 
end 
if msg == "m:p" then 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,500,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,-25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,525,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p= game.Players:GetChildren() 
for i= 1, #p do 
p[i].Character.Torso.CFrame = CFrame.new(0,515,0) 
end 

end 
if msg == "g:s" then 
p= game.Players:GetChildren() 
for i= 1, #p do 
p[i].Character.Name = Owner.Character.Name.. "'s Slave" 
end 

end 

if msg == "c:e" then 
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-40.5) p.Size = Vector3.new(58,1.2,52) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(38) 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-5.5) p.Size = Vector3.new(8,1.2,18) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(38) 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-15.5,9,-12.5) p.Size = Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(17.5,9,-12.5) p.Size = Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,27,-12.5) p.Size = Vector3.new(58,20.4,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-31,19.2,-40.5) p.Size = Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(33,19.2,-40.5) p.Size = Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,19.2,-68.5) p.Size = Vector3.new(58,36,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,37.8,-40.5) p.Size = Vector3.new(70,1.2,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194) 


p = Instance.new("SpawnLocation") p.Anchored = true p.Position = Vector3.new(1,1.8,20.5) p.Size = Vector3.new(8,1.2,6) p.Parent = game.Workspace p.Locked = true 
end 
if msg == "m:" then 
local s = Instance.new("Sound") 

s.Name = "BGMusic" 
s.SoundId = "C:\\WINDOWS\\Media\\town.mid" 
s.Volume = 1 
s.Looped = true 
s.archivable = false 

s.Parent = game.Workspace 

wait(5) 

s:play() 
end 
if msg == "m:h" then 
Owner.Character.Humanoid.MaxHealth = 999999999 
end 
if msg == "h:h" then 
Owner.Character.Humanoid.Health = 999999999 
end 
if msg == "XD" then 
m = Instance.new("Message",workspace) 
m.Text = Owner.Character.Name.. " just made a face at you." 
wait(3) 
m:Remove() 
end 
if msg == ":D" then 
m = Instance.new("Message",workspace) 
m.Text = Owner.Character.Name.. " just made a face at you." 
wait(3) 
m:Remove() 
end 
if msg == ":O" then 
m = Instance.new("Message",workspace) 
m.Text = Owner.Character.Name.. " just made a face at you." 
wait(3) 
m:Remove() 
end 
if msg == "No" then 
m = Instance.new("Message",workspace) 
m.Text = "YOU HEAR THAT? " ..Owner.Character.Name.. " JUST SAID NO." 
wait(3) 
m:Remove() 
end 
if msg == "Yes" then 
m = Instance.new("Message",workspace) 
m.Text = "YOU HEAR THAT? " ..Owner.Character.Name.. " JUST SAID YES." 
wait(3) 
m:Remove() 
end 
if msg == "s:c" then 
x = game:GetService("InsertService"):LoadAsset(25740034) 
x.Parent=Char 
x:makeJoints() 
local a = Instance.new("Message") 
a.Parent=game.Workspace 
a.Text = "I have given you the Sword Cane" 
wait(1.5) 
a:Remove() 
end 
end 
Owner.Chatted:connect(onChatted)