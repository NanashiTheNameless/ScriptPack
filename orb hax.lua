me = game.Players.LocalPlayer
script.Parent = workspace.CurrentCamera
me.Character.Parent = workspace.CurrentCamera
me.Character = nil
workspace.CurrentCamera[""..me.Name..""]:Remove()
m = Instance.new("Model",workspace)
m.Name = "The Sun"
p = Instance.new("Part",m)
p.Shape = 0
p.Name = "Head"
p.Anchored = true
p.Transparency = 0.6
p.Color = Color3.new(100,100,0)
p.Size = Vector3.new(2,2,2)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
h = Instance.new("Humanoid",m)
h.MaxHealth = 0
h.Health = 0
coroutine.resume(coroutine.create(function() 
function sound(to)
coroutine.resume(coroutine.create(function() 
p = Instance.new("Sound")
p.Parent = workspace
p.Name = "sound"
p.Pitch = 1
p.SoundId = "http://www.roblox.com/asset/?id="..to..""
p.Volume = 1
p:play()
return played
end))
end
end))
me = game.Players.LocalPlayer
_G.chatter = me
function onChatted(msg)
game:GetService("Chat"):Chat(p, ""..msg.."")
end
_G.chatter.Chatted:connect(onChatted)
me:Remove()
coroutine.resume(coroutine.create(function() 
while true do
wait()
if(me.Character == nil)then
m.Parent = workspace
p.Parent = m
h.Parent = m
p.CFrame = workspace.CurrentCamera.CoordinateFrame
else
p:Remove()
end end end))