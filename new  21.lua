Name="acb227"
player=game.Players[Name]
BSize=9
Size=BSize
StartLocal=false

--[[Reflectance==Local]]--
--[[Q=New brick,R=Remove,T=Reset,P=Clear all,M=Local,N=Global]]--
--Note to self:Make a digging game out of this. (Done =P)

Block=Instance.new("Part")
Block.Size=Vector3.new(BSize,BSize,BSize)
Block.Position=Vector3.new(math.random(-15,15),Size/2+0.1,math.random(-15,15))
Block.Anchored=true
Block.Name="BlockDig"
if StartLocal==true then
Block.Reflectance=0.05
char=workspace.CurrentCamera
else
Block.Reflectance=0
char=workspace
end
Block.TopSurface="Smooth"
Block.BottomSurface="Smooth"
Block.BrickColor=BrickColor.new("Brown")
O=Instance.new("ObjectValue")
O.Parent=Block
O.Value=player
O.Name="Value"

if script.Parent.className~="HopperBin" then
H=Instance.new("HopperBin")
H.Parent=player.Backpack
H.Name="Dig"
Block:Clone().Parent=char
script.Parent=H
end

function Check(cf)
for _,v in pairs(char:children()) do
if v.Name=="BlockDig" and v.CFrame==cf and v.Value.Value==player then
v:remove()
end
end
end

function Make(cf,mouse)
Check(mouse.Target.CFrame)
if cf~=CFrame.new(0,-Size,0) then --Good
Check(mouse.Target.CFrame*CFrame.new(0,-Size,0))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(0,-Size,0)
end
if cf~=CFrame.new(Size,0,0) then --Good
Check(mouse.Target.CFrame*CFrame.new(Size,0,0))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(Size,0,0)
end
if cf~=CFrame.new(-Size,0,0) then --Good
Check(mouse.Target.CFrame*CFrame.new(-Size,0,0))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(-Size,0,0)
end
if cf~=CFrame.new(0,0,Size) then --Good
Check(mouse.Target.CFrame*CFrame.new(0,0,Size))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(0,0,Size)
end
if cf~=CFrame.new(0,0,-Size) then --Good
Check(mouse.Target.CFrame*CFrame.new(0,0,-Size))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(0,0,-Size)
end
if cf~=CFrame.new(0,Size,0) then --Good
Check(mouse.Target.CFrame*CFrame.new(0,Size,0))
local b=Block:Clone()
b.Parent=char
b.CFrame=mouse.Target.CFrame*CFrame.new(0,Size,0)
end
end

function Down(Mouse)
if Mouse.Target and Mouse.Target.Name=="BlockDig" then
local mouse={Target=Mouse.Target,TargetSurface=Mouse.TargetSurface}
if mouse.TargetSurface==Enum.NormalId.Top then
Make(CFrame.new(0,Size,0),mouse)
elseif mouse.TargetSurface==Enum.NormalId.Bottom then
Make(CFrame.new(0,-Size,0),mouse)
elseif mouse.TargetSurface==Enum.NormalId.Left then 
Make(CFrame.new(-Size,0,0),mouse)
elseif mouse.TargetSurface==Enum.NormalId.Right then 
Make(CFrame.new(Size,0,0),mouse)
elseif mouse.TargetSurface==Enum.NormalId.Back then 
Make(CFrame.new(0,0,Size),mouse)
elseif mouse.TargetSurface==Enum.NormalId.Front then 
Make(CFrame.new(0,0,-Size),mouse)
end
end
end

script.Parent.Selected:connect(function(mouse)
mouse.Icon="rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() Down(mouse) end)
mouse.KeyDown:connect(function(k)
if k=="p" then
for _,v in pairs(workspace.CurrentCamera:children()) do
if v.Name=="BlockDig" then
v:remove()
end
end
elseif k=="r" then
if mouse.Target and mouse.Target.Name=="BlockDig" and mouse.Target.Value.Value==player then
mouse.Target:remove()
end
elseif k=="q" then
Block:Clone().Parent=char
elseif k=="t" then
player.Character.head:remove()
elseif k=="n" then
char=workspace
Block.Reflectance=0
for _,v in pairs(workspace.CurrentCamera:children()) do
if v.Name=="BlockDig" and v.Value.Value==player then
v.Parent=char 
v.Reflectance=0
end
end
elseif k=="m" then
char=workspace.CurrentCamera
Block.Reflectance=0.05
for _,v in pairs(workspace:children()) do
if v.Name=="BlockDig" and v.Value.Value==player then
v.Parent=char 
v.Reflectance=0.05
end
end
end
end)
end)
