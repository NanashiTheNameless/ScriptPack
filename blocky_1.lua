Char = game.Workspace.LocalPlayer
Player = game.Players.LocalPlayer
FireTrap = Instance.new("Part",Workspace)
FireTrap.Size = Vector3.new(5,1,5)
FireTrap.Name = "FireTrap"
FireTrap.BrickColor = BrickColor.new("Bright orange")
FireTrap.Anchored = true
debounce = false
function onTouch(Part)
if debounce == false then
Find = Part.Parent:findFirstChild("Humanoid")
Find.Died:connect(function()
burnt = Instance.new("Message",Workspace)
burnt.Text = (Find.Parent.Name.." ".."is now a burnt toast if you know what I mean lol.")
wait(2)
burnt:Remove()
end)
print(Find)
print(Part.Name)
if Find ~= nil then
debounce = true
Fire = Instance.new("Fire")
Fire.Parent = Find.Parent.Torso
Fire.Heat = 25
Fire.Size = 30
wait(0.1)
Find.Parent.Head.face.Texture = "http://www.roblox.com/asset/?id=28119050"
wait(0.1)
notice = Instance.new("Message",Workspace)
notice.Text = (Find.Parent.Name.." ".."is on faur!")
wait(2)
notice:Remove()
wait()
debounce = false
for i = 1, 350 do
wait(2)
Find:TakeDamage(1)
end
wait(2)
end
end
end
FireTrap.Touched:connect(onTouch)
Player.Chatted:connect(function(msg)
if msg == ("F/Me")then
FireTrap.CFrame = Char.Torso.CFrame*CFrame.new(5,-2, 0)
end
end)