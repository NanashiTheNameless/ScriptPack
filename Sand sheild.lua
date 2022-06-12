--clockwork

local bin = script.Parent

local template = Instance.new("Part")
template.Size = Vector3.new(12,12,12)
template.Shape = 0
template.BrickColor = BrickColor.Blue()
template.Transparency = .7
template.TopSurface = 0
template.BottomSurface = 0
template.CanCollide = false

bubbleScript = bin.BubbleScript

function onButton1Down(mouse)
	local player = game.Players.polo1716
	if player == nil then return end
	print("trigger")
	-- find the best cf

	part = template:clone()
	part.Position = player.Character.Torso.Position + Vector3.new(0,5,0)
	newScript = bubbleScript:clone()
	newScript.Parent = part
	newScript.Disabled = false
	part.Parent = player.Character
end

function onSelected(mouse)
	print("select")
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)

-------------------

wait(.1)
bubble = script.Parent
char = bubble.Parent
debris = game:service("Debris")

Propulsion = Instance.new("RocketPropulsion")
Propulsion.Target = char.Torso
Propulsion.MaxThrust = 1e+008
Propulsion.MaxSpeed = 100
Propulsion.ThrustD = 10
Propulsion.ThrustP = 80
Propulsion.TurnP = 0
Propulsion.Parent =  bubble
Propulsion:Fire()

function stick(x, y)
	weld = Instance.new("Weld") 

	weld.Part0 = x
	weld.Part1 = y

	local HitPos = x.Position

	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 

	weld.C0 = C0 
	weld.C1 = C1 
	
	weld.Parent = x
end

function repel(hit)
	if hit.Parent == char then return end
	if hit.Parent.className == "Hat" then return end
	if hit:getMass() > 1000 then return end
	if hit.Anchored == true then return end
	hit:remove()
end

bubble.Touched:connect(repel)
wait(30)
bubble:remove()