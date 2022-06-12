wait()
local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
---
local coolDown = false
local box = Instance.new("Part",workspace)
local fire = Instance.new("Fire",box)
local slc = Instance.new("SelectionBox",box)
local gui = Instance.new("BillboardGui",box)
local txt = Instance.new("TextLabel",gui)
local light = Instance.new("PointLight",box)
local pew = Instance.new("Sound",box)
local hit = false
local isHitting = false
pew.SoundId = "http://www.roblox.com/asset/?id=11944350"
light.Range = 12
light.Brightness = 5
gui.StudsOffset = Vector3.new(0,3,0)
txt.BackgroundTransparency = 1
txt.FontSize = "Size24"
gui.AlwaysOnTop = true
gui.Size = UDim2.new(0,200,0,50)
txt.Size = UDim2.new(0,200,0,50)
txt.Text = (plr.Name.."'s Cubix")
txt.Font = "SourceSansBold"
txt.TextStrokeTransparency = 0.5
slc.Adornee = box
slc.Color3 = Color3.fromRGB(0,0,0)
slc.LineThickness = 0.02
slc.Transparency = .5
slc.SurfaceTransparency = 0
local txt2 = txt:Clone()
txt2.Parent = gui
txt2.Position = UDim2.new(0,0,0,18)
txt2.Text = "- Created by KnightOfChess -"
txt2.FontSize = "Size14"
txt2.TextStrokeTransparency = .5
txt2.TextColor3 = Color3.fromRGB(255,255,255)
local pos = Instance.new("BodyPosition",box)
local apos = Instance.new("BodyAngularVelocity",box)
apos.AngularVelocity = Vector3.new(0,0,0)
pos.P = 30000
box.Size = Vector3.new(2.25,2.25,2.25)
box.Transparency = .99
fire.Heat = -7
fire.Size = 8
local box2 = box:Clone()
box2.Parent = workspace
box2.Fire:Destroy()
box2.BillboardGui:Destroy()
box2.BodyPosition:Destroy()
box2.PointLight:Destroy()
box2.BodyAngularVelocity:Destroy()
box2.CanCollide = false
box2.SelectionBox.SurfaceTransparency = 0.6
box2.CustomPhysicalProperties = PhysicalProperties.new(.01)
box2.CFrame = box.CFrame
box2.Size = Vector3.new(2.6,2.6,2.6)
box2.SelectionBox.Transparency = 1
local weld = Instance.new("ManualWeld",box)
weld.Part0 = box
weld.Part1 = box2
weld.C0 = box.CFrame:inverse() * box2.CFrame

mouse.Button1Down:connect(function()
	pew:Play()
	isHitting = true
	local ray = Ray.new(box.CFrame.p, (mouse.Hit.p - box.CFrame.p).unit * 300)
	local part, position = workspace:FindPartOnRay(ray, char, false, true)
	local beam = box:Clone()
	local ring = Instance.new("Part", workspace)
	local msh = Instance.new("SpecialMesh",ring)
	msh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	ring.Size = Vector3.new(1,1,1)
	ring.Anchored = true
	ring.CanCollide = false
	ring.BrickColor = BrickColor.new("Mid gray")
	beam.Parent = workspace
	beam.Fire:Destroy()
	beam.BillboardGui:Destroy()
	beam.BodyPosition:Destroy()
	beam.PointLight:Destroy()
	beam.BodyAngularVelocity:Destroy()
	beam.CanCollide = false
	beam.Anchored = true
	beam.SelectionBox.Transparency = .5
	beam.SelectionBox.SurfaceTransparency = 1
	local distance = (box.CFrame.p - position).magnitude
	beam.Size = Vector3.new(.4, .4, distance)
	beam.CFrame = CFrame.new(box.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	ring.CFrame = beam.CFrame:toWorldSpace(CFrame.new(0,0,distance/2-2))
	coroutine.resume(coroutine.create(function()
	local Effect = box:Clone()
		Effect.Parent = workspace
		Effect:ClearAllChildren()
		Effect.CFrame = box.CFrame
		Effect.Anchored = true
		Effect.CanCollide = false
		local ESlc = slc:Clone()
		ESlc.Parent = Effect
		coroutine.resume(coroutine.create(function()
		for i = 2.5,3.5,.08 do
			ESlc.Adornee = Effect
			Effect.Size = Vector3.new(i,i,i)
			ESlc.SurfaceTransparency = ESlc.SurfaceTransparency + 0.075
			ESlc.Transparency = 1
			wait()
		end
		Effect:Destroy()
		isHitting = false
		end))
		coroutine.resume(coroutine.create(function()
		for i = .4,2.5,.17 do
		local a = Instance.new("Part", workspace)
		a.Anchored = true
		a.Transparency = 1		
		a.CFrame = ring.CFrame:toWorldSpace(CFrame.new(0,0,5))
		pos.Position = a.Position
		a:Destroy()
		ring.Transparency = ring.Transparency + .08
		msh.Scale = msh.Scale + Vector3.new(.4,.4,0)
		box2.SelectionBox.Color3 = Color3.fromRGB(r,g,b)
		beam.CFrame = CFrame.new(box.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		Effect.CFrame = box.CFrame
		beam.SelectionBox.Color3 = Color3.fromRGB(r,g,b)
		beam.SelectionBox.LineThickness = beam.SelectionBox.LineThickness + .05
		beam.SelectionBox.Transparency = beam.SelectionBox.Transparency + .05
		wait()		
		end
		ring:Destroy()
		beam:Destroy()
		end))
	end))
	beam.Touched:connect(function(p)
	local h = p.Parent:findFirstChild("Humanoid")
		if hit == false and h ~= nil and p.Parent~=char then
			h:TakeDamage(10)
		end
	end)
end)

plr.Chatted:connect(function(msg)
	coroutine.resume(coroutine.create(function()
		local Effect = box:Clone()
		Effect.Parent = workspace
		Effect:ClearAllChildren()
		Effect.CFrame = box.CFrame
		Effect.Anchored = true
		Effect.CanCollide = false
		local ESlc = slc:Clone()
		ESlc.Parent = Effect
		for i = 2.5,3.5,.08 do
			ESlc.Adornee = Effect
			Effect.Size = Vector3.new(i,i,i)
			ESlc.SurfaceTransparency = ESlc.SurfaceTransparency + 0.075
			ESlc.Transparency = 1
			wait()
		end
		Effect:Destroy()
	end))
	for i = 0,#msg do
		txt.Text = ("- "..msg:sub(0,i).." -")
		wait(.055)
	end
	wait(2)
	txt.Text = (plr.Name.."'s Cubix")
end)

coroutine.resume(coroutine.create(function()
repeat
r = 255
g = 0
b = 0
for i = 0,255,5 do
	r = r - 5
	b = b + 5
	slc.SurfaceColor3 = Color3.fromRGB(r,g,b)
	box2.SelectionBox.SurfaceColor3 = Color3.fromRGB(r,g,b)
	fire.Color = Color3.fromRGB(r,g,b)
	fire.SecondaryColor = fire.Color
	txt.TextColor3 = Color3.fromRGB(r,g,b) 
	light.Color = Color3.fromRGB(r,g,b) 
	wait()
end
for i = 0,255,5 do
	g = g + 5
	slc.SurfaceColor3 = Color3.fromRGB(r,g,b)
	box2.SelectionBox.SurfaceColor3 = Color3.fromRGB(r,g,b)
	fire.Color = Color3.fromRGB(r,g,b)
	fire.SecondaryColor = fire.Color
	txt.TextColor3 = Color3.fromRGB(r,g,b)
	light.Color = Color3.fromRGB(r,g,b) 
	wait()
end
for i = 0,255,5 do
	b = b - 5
	slc.SurfaceColor3 = Color3.fromRGB(r,g,b)
	box2.SelectionBox.SurfaceColor3 = Color3.fromRGB(r,g,b)
	fire.Color = Color3.fromRGB(r,g,b)	
	fire.SecondaryColor = fire.Color
	txt.TextColor3 = Color3.fromRGB(r,g,b)
	light.Color = Color3.fromRGB(r,g,b) 
	wait()
end
for i = 0,255,5 do
	r = r + 5
	slc.SurfaceColor3 = Color3.fromRGB(r,g,b)
	box2.SelectionBox.SurfaceColor3 = Color3.fromRGB(r,g,b)
	fire.Color = Color3.fromRGB(r,g,b)
	fire.SecondaryColor = fire.Color
	txt.TextColor3 = Color3.fromRGB(r,g,b)
	light.Color = Color3.fromRGB(r,g,b) 
	wait()
end
for i = 0,255,5 do
	g = g - 5
	slc.SurfaceColor3 = Color3.fromRGB(r,g,b)
	box2.SelectionBox.SurfaceColor3 = Color3.fromRGB(r,g,b)
	fire.Color = Color3.fromRGB(r,g,b)
	fire.SecondaryColor = fire.Color
	txt.TextColor3 = Color3.fromRGB(r,g,b)
	light.Color = Color3.fromRGB(r,g,b) 
	wait()
end
until false
end))

coroutine.resume(coroutine.create(function()
repeat
	if isHitting == false then
	for i = 5,6,.01 do
	pos.Position = char.Torso.Position + Vector3.new(0,i,0)
	wait()
	end
	for i = 6,5,-.01 do
	pos.Position = char.Torso.Position + Vector3.new(0,i,0)
	wait()
	end
	end
	wait()
until false
end))

coroutine.resume(coroutine.create(function()
repeat wait(2)
	local num = math.random(-3,3)
	apos.AngularVelocity = Vector3.new(num,num,num)
until false
end))

coroutine.resume(coroutine.create(function()
repeat wait()
slc.Adornee = box
until false
end))

coroutine.resume(coroutine.create(function()
	repeat wait() until char.Humanoid.Health <= 0
	for i = 2.5,3.2,.05 do
		txt.TextTransparency = txt.Transparency + 0.075
		slc.SurfaceTransparency = slc.SurfaceTransparency + 0.075
		slc.Transparency = slc.Transparency + 0.075
		wait()
	end
	box:Destroy()
end))