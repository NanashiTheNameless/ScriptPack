local cam=workspace.CurrentCamera
local screen_size=Vector2.new(0,0)
local maxdist=500 -- Maximum distance from where parts should be visible
local update=10 -- In seconds
local oldt=tick()
local gui=game.StarterGui.ScreenGui
screen_size=Vector2.new(gui.AbsoluteSize.x,gui.AbsoluteSize.y)

local function pixel2stud(pix)
return pix * 2.54 / 96
end

local objects,trans={},{}
function Get(par,class)
local cl=class;
local chs=par:GetChildren()
for i=1,#chs do
if chs[i]:IsA(class) and not chs[i].Parent:findFirstChild"Humanoid" then
table.insert(objects,chs[i])
table.insert(trans,chs[i].Transparency)
end
Get(chs[i],cl)
end
return objects;
end
gt=Get(workspace,"BasePart")

gui.Changed:connect(function(w)
if w=="AbsoluteSize" then
screen_size=Vector2.new(gui.AbsoluteSize.x,gui.AbsoluteSize.y)
end
end)

while true do
local mid=cam.CoordinateFrame*CFrame.new(0,0,-maxdist)
--local region=Region3.new(Vector3.new(bottom_left.p.x,bottom_left.p.y,bottom_left.p.z),Vector3.new(top_far_right.p.x,top_right.p.y,top_far_right.p.z))
--local parts = workspace:FindPartsInRegion3(region)
if tick()>oldt+update then
oldt=tick()
objects={}
gt=Get(workspace,"BasePart")
end
for i=1,#gt do
--if (gt[i].Position-cam.CoordinateFrame*CFrame.new(0,0,(maxdist/rays)*path).p).magnitude<=pixel2stud(math.max(screen_size.x,screen_size.y))*path then
if (gt[i].Position-mid.p).magnitude<=maxdist then
gt[i].Transparency=trans[i]
else
gt[i].Transparency=1
end
end
wait()
end 

--mediafire