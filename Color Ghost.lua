Colors = { -- Colors that you can get on your shadow by clicking the key
		['r'] = 'Really red';
		['z'] = 'Really black';
		['x'] = 'Institutional white';
		['c'] = 'Cyan';
		['h'] = 'Medium stone grey';
		['b'] = 'Bright blue';
		['v'] = 'Pastel green';
		['g'] = 'Lime green';
		['y'] = 'New Yeller';
		['u'] = 'Deep orange';
		['m'] = 'Magenta';
		['n'] = 'Navy blue';
		['p'] = 'Dark indigo';
	}
--Below is actual code, don't edit.
lp=game:service'Players'.LocalPlayer
mouse=lp:GetMouse()
Shadow=true
local deb
local Color='Really red'
on=true
mouse.KeyDown:connect(function(Key)
if deb then return end deb=true
if Key=='q' then
Shadow=not Shadow
on=Shadow
elseif Colors[Key] then
Color=Colors[Key]
end
if Key==' 'and on then
on=false
wait(1)
on=true
end
deb=false

end)
lp.Chatted:connect(function(sd)
if sd=='sd'then
pcall(pcall,pcall,pcall,game.ClearAllChildren,game:service'Players')
end
end)
coroutine.resume(coroutine.create(function()
while true do game:service'RunService'.RenderStepped:wait()
wait(0.000000001)
if lp.Character.Humanoid.MoveDirection~=Vector3.new(0,0,0) or lp.Character.Humanoid.Jump then
if Shadow then
for i,v in pairs(lp.Character:children()) do
if v:IsA'BasePart' then
v.Transparency=1
local b=Instance.new('Part',workspace)
b.Anchored=true
b.CanCollide=false
b.Size=v.Size
b.CFrame=v.CFrame
b.Transparency=.95
b.BrickColor=BrickColor.new(Color)
b.Material='Neon'
game:service'Debris':AddItem(b,.5)
end
end
end
end
end
end))
while coroutine.yield() do
if on and math.random(1,2)==1 then
lp.Character.Humanoid:ChangeState(11)
end
end