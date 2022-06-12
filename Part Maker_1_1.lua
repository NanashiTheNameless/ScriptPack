r,pts=50,6000
g=Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
f=Instance.new("Frame",g)
f.Size,f.Style=UDim2.new(.5,0,.5,0),"RobloxRound"
t1,t2=Instance.new("TextBox",f),Instance.new("TextBox",f)
t2.Position=UDim2.new(0,0,.3,0)
t1.Text,t2.Text=r,pts
t1.Size,t2.Size=UDim2.new(1,0,.3,0),UDim2.new(1,0,.3,0)
t1.MultiLine,t2.MultiLine=1,1
t1.BackgroundTransparency,t2.BackgroundTransparency=1,1
b=Instance.new("TextButton",f)
b.Text,b.Style="Ok","RobloxButtonDefault"
b.Size=UDim2.new(1,0,.4,0)
b.TextColor3,t1.TextColor3,t2.TextColor3=Color3.new(1,0,2),Color3.new(1,0,0),Color3.new(1,0,0)
b.Position=UDim2.new(0,0,.6,0)
b.FontSize="Size24"
t1.FontSize,t2.FontSize="Size36","Size36"
f.Active,t1.Active,t2.Active,b.Active=1,1,1,1
m=Instance.new("Model",Workspace)
m.Name="Arena"
b.MouseButton1Down:connect(function()
r,pts=t1.Text,t2.Text
g:remove()
h=Instance.new("Hint",Workspace)
wait()
for i=0,pts do
wait()
h.Text=i.."/"..pts.." and "..r.." radius [Arena Maker 1.0] <DO NOT touch the parts until finished generation>"
local p=Instance.new("Part",m)
p.Name="Part"..i
p.Size=Vector3.new(1,1,1)
p.Anchored=1
p.Position=Vector3.new(math.cos(i*100)*r,0,math.sin(i*100)*r)
end
if h~=nil then h:remove() end
script:remove()
end)
