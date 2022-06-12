local p = 1 
target = workspace.PERSON
target.archivable = true
function genclone()
for i = 1,p do 
c = target:Clone()
c.Parent = workspace.Base
c.Torso.CFrame = c.Torso.CFrame + Vector3.new(5*math.sin(i),0,5*math.cos(i)) 
c.Name = tostring(target)..""
wait() --make sure it dosnt glitch so it's sorta delayed
end 
end
pl = game.Players.rigleto
g = pl.PlayerGui
s = Instance.new("ScreenGui",g)
i = Instance.new("ImageLabel",s)
i.Position = UDim2.new(0,25,0,225)
i.Size = UDim2.new(0,200,0,200)
i.BackgroundTransparency = 0.25
i.BackgroundColor = BrickColor.new("Dark Royal blue")
t = Instance.new("TextButton",i)
t.Size = UDim2.new(0,190,0,200/3.1) 
t.Position = UDim2.new(0,5,0,5) 
t.FontSize = 5
t.Text = "Send in "..p.." Clones"
function Go()
genclone()
end
t.MouseButton1Down:connect(Go)
t1 = Instance.new("TextButton",i)
t1.Size = UDim2.new(0,190,0,200/3.1) 
t1.Position = UDim2.new(0,5,0,200/2.75)
t1.BackgroundColor = BrickColor.new("Lime green")
t1.Text = "Increase Clones"
t1.FontSize = 5
function Inc()
p = p+1
t.Text = "Send in "..p.." Clones"
end
t1.MouseButton1Down:connect(Inc)
t2 = Instance.new("TextButton",i)
t2.Size = UDim2.new(0,190,0,200/3.1) 
t2.Position = UDim2.new(0,5,0,200/1.5) 
t2.BackgroundColor = BrickColor.new("Really red")
t2.FontSize = 5
t2.Text = "Decrease Clones"
function Dec()
p = p-1
t.Text = "Send in "..p.." Clones"
end
t2.MouseButton1Down:connect(Dec) 

pl.Chatted:connect(function(msg)
if string.sub(msg:lower(),1,7) == "follow/" then
local fp = findPlayer(string.sub(msg,8))
if fp then
for i,v in pairs(workspace.Base:GetChildren()) do 
v.Humanoid:MoveTo(v.Torso , fp.Character.Torso.Position)
end
end
end
end)