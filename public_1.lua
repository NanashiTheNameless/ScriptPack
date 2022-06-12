local d=game:GetObjects("rbxassetid://520998")[1]local _a={}
for ba,ca in pairs(d:GetChildren())do table.insert(_a,ca)end;local aa=Instance.new("Model")aa.Name="DZxDz"
aa.Parent=workspace;math.randomseed(tick())
function cs()
local ba=game.Players:GetChildren()
for i=1,#ba do
if workspace:FindFirstChild(ba[i].Name)then
local ca=Instance.new("Part")ca.Parent=workspace.DZxDz;ca.Name="nzxkcd"
ca.Anchored=true;ca.Locked=true;ca.CanCollide=false;ca.Transparency=1
ca.CFrame=
CFrame.new(workspace:FindFirstChild(ba[i].Name).Torso.Position)+Vector3.new(0,100,0)
delay(math.random(0.5,1.5),function()while wait(0.42)do sz(ca)end end)local da={}for i=1,8 do local _b=ca:clone()_b.Parent=workspace.DZxDz
da[i]=_b end
for i=1,#da do
if i==1 then da[i].CFrame=
CFrame.new(ca.Position)+Vector3.new(100,0,0)
local _b=da[i]
delay(math.random(0.5,1.5),function()while wait(0.42)do sz(_b)end end)elseif i==2 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(0,0,100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==3 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(-100,0,0)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==4 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(0,0,-100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==5 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(100,0,100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==6 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(-100,0,100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==7 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(100,0,-100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)elseif i==8 then
da[i].CFrame=CFrame.new(ca.Position)+Vector3.new(-100,0,-100)local _b=da[i]
delay(math.random(0.5,1.5),function()
while wait(0.42)do sz(_b)end end)end end end end end;cs()function sz(ba)
local ca=_a[math.random(1,#_a)]:Clone()ca.Parent=workspace.DZxDz
ca:MoveTo(ba.Position)end