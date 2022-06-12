--[

--By Chromium

--Project started: June 26th, 2016
--Last updated: June 28th, 2016

--my first script

--]

wait()
local hum = game.Workspace.gus14657.Humanoid --name here
local plr = game.Workspace.gus14657 --name here 

wait(0.1)
hum.WalkSpeed = 32

plr.Head.face.Texture = "http://www.roblox.com/asset/?id=101765221"
	plr.Shirt:Remove()
	plr.Pants:Remove()

Shirt = Instance.new("Shirt",Character)
	Shirt.Parent = plr
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=249639658"

Pant = Instance.new("Pants",Character)
	Pant.Parent = plr
	Pant.PantsTemplate = "http://www.roblox.com/asset/?id=249639685"

lite = Instance.new("PointLight")
	lite.Parent = plr.Torso
	lite.Brightness = 100
	lite.Range = 8
	lite.Color = Color3.new(1,1,1)

