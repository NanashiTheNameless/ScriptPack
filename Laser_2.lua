										
										
if script.Parent.className~="HopperBin" then 
ma=Instance.new("HopperBin") 
ma.Name="Laser" 
ma.Parent=game.Players.lordsheen.backpack 
script.Parent=ma 
end 

lifetime = 5


bin = script.Parent
player = bin.Parent.Parent
char = player.Character
disabled = false

b = Instance.new("Part")
b.BrickColor = BrickColor.new("Toothpaste")
b.Transparency = .6
b.Reflectance = .2
b.formFactor = "Symmetric"
b.Size = Vector3.new(1,1,1)
b.Anchored = true
b.CanCollide = false
m = Instance.new("BlockMesh")
m.Parent = b
m.Name = "Mesh"

function damage(target, direct)
	if target.Parent:findFirstChild("Humanoid") then
		if direct == true then
t = target.Parent.Humanoid
h = t.Health/2
			t:TakeDamage(h) --Direct Damage
		else
t = target.Parent.Humanoid
h = t.Health/2
			t:TakeDamage(h) --Indirect Damage
		end
	end
end

function onButton1Down(mouse, obj, pos)
	if disabled then return end
	disabled = false
	torso = char:findFirstChild("Torso")
	if torso then
		laser = b:clone()
		mag = (torso.Position - mouse.Hit.p).magnitude
		half = torso.Position + (torso.Position - mouse.Hit.p) * mag/2
		laser.CFrame = CFrame.new(((obj.Position + pos)/2) + 1 * (pos - obj.Position).unit, pos)
		laser.Mesh.Scale = Vector3.new(.10,.10,mag)
		laser.Parent = Workspace
		if mouse.Target then damage(mouse.Target, true) end
		laser.Touched:connect(function(part) damage(part, false) end)
		for i = .1, 1, .1 do
			wait()
			laser.Transparency = i
		end
		laser:Remove()
	end
	disabled = false
 end
function onKeyDown(key)

end

function onSelected(mouse)
	torso = char:findFirstChild("Torso")
	if torso then
		mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
		mouse.Button1Down:connect(function() onButton1Down(mouse, torso, mouse.Hit.p) end)
		mouse.KeyDown:connect(onKeyDown)
	end
end 

bin.Selected:connect(onSelected)

