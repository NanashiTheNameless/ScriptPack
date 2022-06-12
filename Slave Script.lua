Owner = "yfc" 
SlaveName = "callum1838" 

--[[ 






--]]
certificate = Instance.new("Message") 
certificate.Text = "Anaminus has made a slave for "..Owner..", his name is "..SlaveName
certificate.Parent = game.Workspace 
wait(3) 
certificate:Remove() 

 
a = game.Players:FindFirstChild(Owner) 
function Chat(text) 
if text == SlaveName..", freeze me" then 
a.Character.Head.Reflectance = 1 
a.Character.Torso.Reflectance = 1 
a.Character["Left Arm"].Reflectance = 1 
a.Character["Right Arm"].Reflectance = 1 
a.Character["Left Leg"].Reflectance = 1 
a.Character["Right Leg"].Reflectance = 1 
end 
 
if text == SlaveName..", shield me" then 
b = Instance.new("ForceField") 
b.Parent = a.Character 
end 

if text == SlaveName..", take off my hat" then 
LuckyLolCat = a.Character:GetChildren() 
for Man= 1, #LuckyLolCat do 
if LuckyLolCat[Man].className == "Hat" then 
LuckyLolCat[Man]:Remove() 
end 
end 
end 
 
if text == SlaveName..", kill me" then 
a.Character.Humanoid.Health = 0 
end 
 
if text == SlaveName..", make me a ghost" then 
a.Character.Head.Transparency = .4 
a.Character.Torso.Transparency = .4 
a.Character["Left Arm"].Transparency = .4 
a.Character["Right Arm"].Transparency = .4
a.Character["Left Leg"].Transparency = .4 
a.Character["Right Leg"].Transparency = .4 
end 

if text == SlaveName..", make me invisible" then 
a.Character.Head.Transparency = 1 
a.Character.Torso.Transparency = 1 
a.Character["Left Arm"].Transparency = 1 
a.Character["Right Arm"].Transparency = 1 
a.Character["Left Leg"].Transparency = 1 
a.Character["Right Leg"].Transparency = 1 
end 
 
if text == SlaveName..", punish me" then 
a.Character.Parent = game.Lighting 
end 
 
if text == SlaveName..", make my head big" then 
a.Character.Head.Mesh.Scale = Vector3.new(50, 50, 50) 
end 
 
if text == SlaveName..", make my head little" then 
a.Character.Head.Mesh.Scale = Vector3.new(.65, .65, .65) 
end 
 
if text == SlaveName..", make my head normal" then 
a.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25) 
end 

if text == SlaveName..", unpunish me" then 
a.Character.Parent = game.Workspace 
end 

if text == SlaveName..", make it night" then 
game.Lighting.TimeOfDay = "24" 
end 
 
if text == SlaveName..", make it day" then 
game.Lighting.TimeOfDay = "14" 
end 
 
if text == SlaveName..", make it midnight" then  
game.Lighting.TimeOfDay = "18"  
end  

abclass = game.Players:GetChildren() 
for acclasser= 1, #abclass do 
if text == SlaveName..", kick "..abclass[acclasser].Name.."" then 
abclass[acclasser]:Remove() 
end 
end 
 
 
if text == SlaveName..", kick me" then 
a:Remove() 
end 

if text == SlaveName..", unfreeze me" then 
a.Character.Head.Reflectance = 0 
a.Character.Torso.Reflectance = 0 
a.Character["Left Arm"].Reflectance = 0 
a.Character["Right Arm"].Reflectance = 0 
a.Character["Left Leg"].Reflectance = 0 
a.Character["Right Leg"].Reflectance = 0 
end 

if text == SlaveName..", unghost me" then 
a.Character.Head.Transparency = 0 
a.Character.Torso.Transparency = 0 
a.Character["Left Arm"].Transparency = 0 
a.Character["Right Arm"].Transparency = 0 
a.Character["Left Leg"].Transparency = 0 
a.Character["Right Leg"].Transparency = 0 
end 

if text == SlaveName..", unshield me" then 
a.Character.ForceField:remove() 
end 

if text == SlaveName..", make me visible" then 
a.Character.Head.Transparency = 0 
a.Character.Torso.Transparency = 0 
a.Character["Left Arm"].Transparency = 0 
a.Character["Right Arm"].Transparency = 0 
a.Character["Left Leg"].Transparency = 0 
a.Character["Right Leg"].Transparency = 0 
end 

if text == SlaveName..", sit me" then 
a.Character.Humanoid.Sit = true 
end 

if text == SlaveName..", make me jump" then 
a.Character.Humanoid.Jump = true 
end 

if text == SlaveName..", shutdown the server" then 
game.NetworkServer:Remove() 
end 

if text == SlaveName..", make me GigsD4X" then 
a.CharacterAppearance = "http://www.roblox.com/Asset/?hash=abf84ed7347cacc1eaa14327cf956c88&isapproved=true;http://www.roblox.com/Asset/?versionid=28706;http://www.roblox.com/Asset/?versionid=2917535;http://www.roblox.com/Asset/?versionid=16367358" 
end 

if text == SlaveName..", make me a guest" then 
a.CharacterAppearance = "http://www.roblox.com/Asset/?hash=abf84ed7347cacc1eaa14327cf956c88&isapproved=true;http://www.roblox.com/Asset/?versionid=22407767" 
end 
end 
a.Chatted:connect(Chat) 