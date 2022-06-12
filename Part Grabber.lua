p=game.Players.LocalPlayer
t=p.Character.Torso
m=p:GetMouse()
m.Button1Down:connect(function()
if m.Target.Name == 'Base' then return end
pcall(function()
local part=m.Target
part.Anchored = true
local sl=Instance.new('SelectionPartLasso',part)
sl.Humanoid=p.Character.Humanoid
sl.Part=part
sl.Color=BrickColor.Random()
local int=math.random(0,360)
local s=0
local u=10
local dir=true
game:service'RunService'.Stepped:connect(function()
part.CFrame=t.CFrame*CFrame.Angles(0,math.rad(int+s),0)*CFrame.new(0,0,-u)
s=s+1
if dir==true then
u=u+.5
elseif dir==false then
u=u-.5
end
if u==12 or u==8 then
dir=not dir
end
if s==360 then s=0 end
end)
end)
end)