me = game.Players.ic3w0lf589
char = me.Character
hoppa = Instance.new("HopperBin")
hoppa.Parent = me.Backpack
hoppa.Name = "Tool creator"
script.Parent = hoppa
function selected(mouse, key)
mouse.Button1Down:connect(function()
if mouse.Target then
local targ = mouse.Target
if targ.Name == "Base" then return end
local too = Instance.new("Tool")
too.Parent = me.Backpack
too.Name = targ.Name
too.GripPos = Vector3.new(0,0,0)
if targ.Size.Y >= 1 then
too.GripPos = Vector3.new(0,-0.5,0)
elseif targ.Size.Y >= 2 then
too.GripPos = Vector3.new(0,-1,0)
elseif targ.Size.Y >= 3 then
too.GripPos = Vector3.new(0,-1.5,0)
elseif targ.Size.Y >= 4 then
too.GripPos = Vector3.new(0,-2,0)
end
local hand = targ
hand.Name = "Handle"
hand.Anchored = false
hand.Parent = too
hand.CanCollide = false
local gee = false
local function touch(hit)
if gee == false then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil then
hum:TakeDamage(math.random(5,10))
end
end
hand.Touched:connect(touch)
too.Equipped:connect(function()
too.Activated:connect(function()
gee = true
local val = Instance.new("StringValue")
val.Parent = too
val.Name = "toolanim"
val.Value = "Slash"
wait(0.5)
gee = false
end)
end)
end
end)
end
script.Parent.Selected:connect(selected)