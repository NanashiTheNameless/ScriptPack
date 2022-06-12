										
										
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

function onButton1Down(mouse, obj, pos)
	if disabled then return end
	disabled = false
	torso = char:findFirstChild("Torso")
	if torso then
		b = Instance.new("Part")
		b.BrickColor = BrickColor.random()
		b.formFactor = "Custom"
		b.Size = Vector3.new(1,1,1)
		b.Anchored = true
		b.CanCollide = true
		mag = (torso.Position - mouse.Hit.p).magnitude
		half = torso.Position + (torso.Position - mouse.Hit.p) * mag/2
		b.CFrame = CFrame.new(((obj.Position + pos)/2) + 1 * (pos - obj.Position).unit, pos)
		b.Size = Vector3.new(1,1.2,mag)
		b.Parent = Workspace
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

