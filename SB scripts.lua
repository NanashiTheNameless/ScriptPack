function down(m) 
hit = m.Target 
if (hit == nil) then return end 
local h = hit.Parent:FindFirstChild("Humanoid") 
if (h ~= nil) then 
wait(20) 
h.Health = 0 
end 
end 
function s(m) 
s.Button1Down:connect(function() down(m) end) 
end 
script.Parent.Selected:connect(s)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
wearer = game.Players.acb227 
game.Workspace.acb227.Humanoid.WalkSpeed = 100 
if wearer.Character:findFirstChild("Torso") == nil then return end 
if wearer.Character:findFirstChild("Right Leg") == nil then return end 
if wearer.Character:findFirstChild("Left Leg") == nil then return end 
if wearer.Character:findFirstChild("Right Arm") == nil then return end 
if wearer.Character:findFirstChild("Left Arm") == nil then return end
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local M = game:GetService("InsertService"):LoadAsset(2568633) 
M.Parent = game.Workspace 
M:MakeJoints()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
M = Game:GetService("InsertService"):LoadAsset(23456449) 
M.Parent = Game.Workspace 
M:MakeJoints() 
M:MoveTo(Game.Workspace.acb227.Torso.Position + Vector3.new(0, 0, 0)) 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
game.Workspace.acb227.Head.Mesh.Scale = Vector3.new (-20, 1, 1) 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local s = Instance.new("Sound") 

s.Name = "BGMusic" 
s.SoundId = "C:\WINDOWS\Media\Windows XP Shutdown.mp3" 
s.Volume = 1 
s.Looped = true 
s.archivable = false 

s.Parent = game.Workspace 

wait(5) 

s:play() 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p = game.Players:GetChildren() 
for i = 1,#p do 
p[i].Character.Torso.CFrame = CFrame.new(math.random(1,30),-10,math.random(1,30)) 
end